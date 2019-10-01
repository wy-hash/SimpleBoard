package com.test.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.www.domain.ChatVO;
import com.test.www.persistence.ChatMapper;

@Controller
public class EchoController {
	
	@Autowired
	private ChatMapper chatMapper;
	
	@RequestMapping("/chat")
	public String chat(Model model,HttpServletRequest request) {
	
		
		request.getSession().setAttribute("TestID", "테스트 세션");

		
		//기존 대화 출력
		List<ChatVO> list = chatMapper.list();
		
		for (ChatVO chatVO : list) {
			System.out.println(chatVO);
		}
		
		model.addAttribute("list", list);
		
		return "/board/chat";
	}	
	@RequestMapping("/chat2")
	public String chat2(HttpServletRequest request) {
	
		
		request.getSession().setAttribute("TestID", "테스트 세션2ㅌ투투투투");
		
		return "/board/chat2";
	}
	

}
