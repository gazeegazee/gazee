package com.multi.gazee.chat;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.multi.gazee.product.ProductVO;

@Component
@Repository
public class ChatDAO {
	
	@Autowired
	SqlSessionTemplate my;

	public int create(ChatVO bag) {
		int result = my.insert("chat.create", bag);
		if (result > 0) {
			int roomId = bag.getRoomId();
			return roomId;
		} else {
			return 0;
		}
	}
	
	public ChatVO chatRoomSearch(ChatVO bag) {
		ChatVO bag2 = my.selectOne("chat.chatRoomSearch", bag);
		return bag2;
	}
	
	public List<ChatVO> chatList(String memberId) {
		List<ChatVO> list = my.selectList("chat.chatList", memberId);
		return list;
	}
	
	public ChatAndProductVO chatRoomEntry(int roomId) {
		ChatAndProductVO bag = my.selectOne("chat.chatRoomEntry", roomId);
		return bag;
	}

}
