package com.multi.gazee.transactionHistory;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.gazee.member.MemberDAO;
import com.multi.gazee.member.MemberVO;
import com.multi.gazee.service.TransactionRecordVO;
import com.multi.gazee.service.TransactionServiceImpl;

@Controller
public class TransactionHistoryController {
	@Autowired
	TransactionHistoryDAO transactionHistorydao;
	
	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	TransactionServiceImpl transactionServiceImpl;
	
	@RequestMapping("pay/userInfo")
	@ResponseBody
	public HashMap<String, Object> checkBalance(HttpSession session, HttpServletResponse response) {
		session.setAttribute("id", "testuser");
		//1. 잔액 가져오기
		int balance = transactionHistorydao.select(String.valueOf(session.getAttribute("id")));
		//2. 멤버객체 가져오기(계좌정보)
		MemberVO member = memberDAO.selectOne(String.valueOf(session.getAttribute("id")));
		//3. 반환 객체 생성
		HashMap<String, Object> memberInfo = new HashMap<String, Object>();
		memberInfo.put("balance", balance);
		memberInfo.put("bank", member.getBank());
		memberInfo.put("account", member.getAccount());
		response.setStatus(HttpServletResponse.SC_OK);
		return memberInfo;
	}
	
	@RequestMapping("pay/record")
	public void transactionRecord(@RequestParam HashMap<String, String> param, HttpSession session, Model model) {
		param.put("id", String.valueOf(session.getAttribute("id")));
		param.put("end", param.get("end")+" 23:59:59");
		List<TransactionRecordVO> transactionRecord= transactionServiceImpl.changeFormat(transactionHistorydao.selectList(param), session);
		model.addAttribute("transactionRecord", transactionRecord);
	}
}
