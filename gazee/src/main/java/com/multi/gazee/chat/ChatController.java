package com.multi.gazee.chat;

import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChatController {
	
	@Autowired
	ChatDAO dao;

	@RequestMapping("chat/chatRoomCreate")
	@ResponseBody
	public int chatRoomCreate(@RequestParam("newProductId")int newProductId, String buyerId, String transaction) {
		System.out.println("채팅방 생성 요청됨");
		ChatVO bag = new ChatVO();
		bag.setProductId(newProductId);
		bag.setBuyerId(buyerId);
		bag.setTransaction(transaction);
	
		int result = dao.create(bag);
		
		if (result != 0) {
			return result;
		} else {
			return 0;
		}
	}
	
	@RequestMapping("chat/chatRoomCheck")
	@ResponseBody
	public int chatRoomCheck(ChatVO bag) {
		ChatVO bag2 = dao.chatRoomSearch(bag);
		if (bag2 != null) {
			return bag2.getRoomId();
		} else {
			return 0;
		}
	}
	
	@RequestMapping("chat/myChatList")
	public void myChatList(String memberId, Model model) {
		List<ChatVO> list = dao.chatList(memberId);
		System.out.println(list+"가져옴");
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getBuyerId().equals(memberId)) {
				list.get(i).setChatPartner(list.get(i).getSellerId());
			} else {
				list.get(i).setChatPartner(list.get(i).getBuyerId());
			}
		}
		model.addAttribute("list", list);
	}
	
	@RequestMapping("chat/chatRoomEntry")
	public void chatRoomEntry(int roomId, Model model, HttpSession session) {
		ChatAndProductVO bag = dao.chatRoomEntry(roomId);
		DecimalFormat decFormat = new DecimalFormat("###,###");
		bag.setPriceDec(decFormat.format(bag.getPrice()));
		model.addAttribute("sellerId", bag.getSellerId());
		model.addAttribute("bag", bag);
	}
	
	@MessageMapping("/chat/{roomId}")
	@SendTo("/topic/{roomId}")
	public ChatOutputMessage chatMessage(int roomId, ChatMessageVO message) {
		System.out.println("받은 메세지>> " + message);
		ChatOutputMessage output = new ChatOutputMessage();
		output.setSender(message.getSender());
		output.setContent(message.getContent());
		SimpleDateFormat simple = new SimpleDateFormat("hh:mm");
		output.setTime(simple.format(new Timestamp(System.currentTimeMillis())));
		return output;
	}
	
}
