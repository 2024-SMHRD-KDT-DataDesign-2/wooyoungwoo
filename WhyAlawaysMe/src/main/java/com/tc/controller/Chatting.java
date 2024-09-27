package com.chall.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;

import com.chall.model.chatDAO;
import com.chall.model.chatDTO;

import javax.websocket.server.PathParam;
import java.io.IOException;
import java.security.Provider.Service;
import java.util.*;

@ServerEndpoint("/chat/{roomIdx}/{userId}")
public class Chatting {

	// 방 이름과 해당 방에 있는 클라이언트 세션을 저장하는 Map
	private static Map<String, Set<Session>> rooms = Collections.synchronizedMap(new HashMap<>());
	private static Map<Session, String> userIds = Collections.synchronizedMap(new HashMap<>());

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		chatDAO dao = new chatDAO() ;
		chatDTO dto = new chatDTO() ;
		
		List<chatDTO> chatList = dao.chatSelect(dto) ;
		
		request.setAttribute("chatList", chatList);
		System.out.println("채팅 목록 : " + chatList);
		
		RequestDispatcher rd = request.getRequestDispatcher("ChattingPage.jsp") ;
		rd.forward(request, response);
	}
	
	@OnOpen
	public void onOpen(Session session, @PathParam("room") String room, @PathParam("userId") String userId)
			throws IOException {
		// 방이 없으면 새로 생성하고, 세션을 추가
		rooms.computeIfAbsent(room, k -> Collections.synchronizedSet(new HashSet<>()));
		rooms.get(room).add(session);

		// 세션과 사용자 ID를 매핑
		userIds.put(session, userId);

	    broadcast(room, userId + "님이 방에 입장하셨습니다.");
	}

	@OnMessage
	public void onMessage(String message, @PathParam("room") String room, Session session) throws IOException {
		// 세션에 저장된 사용자 ID를 가져옴
		String userId = userIds.get(session);
		// "id: 메시지" 형식으로 메시지를 브로드캐스트
		broadcast(room, userId + ": " + message);
	}

	@OnClose
	public void onClose(Session session, @PathParam("room") String room) throws IOException {
		// 세션에 저장된 사용자 ID를 가져옴
		String userId = userIds.get(session);

		// 클라이언트가 방을 나가면 세션을 제거
		rooms.get(room).remove(session);
		userIds.remove(session); // 세션과 ID 매핑 삭제

		broadcast(room, userId + "님이 방을 나가셨습니다");
	}

	@OnError
	public void onError(Session session, Throwable throwable) {
		throwable.printStackTrace();
	}

	// 메시지를 방 내의 모든 클라이언트에게 전송
	private void broadcast(String room, String message) throws IOException {
		Set<Session> roomSessions = rooms.get(room);
		
		System.out.println("roomSessions" + roomSessions);
        if (roomSessions != null) {
            synchronized (roomSessions) {
                for (Session session : roomSessions) {
                    if (session.isOpen()) {
                        session.getBasicRemote().sendText(message);
                    }
                }
            }
        }
	}
	
}
