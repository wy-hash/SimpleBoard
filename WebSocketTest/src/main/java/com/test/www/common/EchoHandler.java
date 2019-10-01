package com.test.www.common;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;


public class EchoHandler extends TextWebSocketHandler{

	private static Logger logger = LoggerFactory.getLogger(EchoHandler.class);
	

    private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

    /**
     * 클라이언트 연결 이후에 실행되는 메소드
     */
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		Map<String,Object> map = session.getAttributes();
		String userId = (String)map.get("TestID");
		System.out.println("로그인 한 아이디 : " + userId);

        sessionList.add(session);
        logger.info("세션아이디 : {} 연결됨, 사용자명 : {}", session.getId(), userId);
        
    }

    /**
     * 클라이언트가 웹소켓서버로 메시지를 전송했을 때 실행되는 메소드
     */
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) 
    		throws Exception {
    	Map<String,Object> map = session.getAttributes();
    	String userId = (String)map.get("TestID");
		System.out.println("로그인 한 아이디 : " + userId);
    	
//        logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
        logger.info("{}로 부터 {} 받음", userId, message.getPayload());
        
        
        for(WebSocketSession sess : sessionList){
//            sess.sendMessage(new TextMessage(session.getId() +" | "+ message.getPayload()));
            sess.sendMessage(new TextMessage(userId +" | "+ message.getPayload()));
        }
    }

    /**
     * 클라이언트가 연결을 끊었을 때 실행되는 메소드
     */
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) 
    		throws Exception {
        sessionList.remove(session);
        logger.info("{} 연결 끊김", session.getId());
    }
}