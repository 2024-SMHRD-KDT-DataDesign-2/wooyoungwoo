package com.tc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tc.model.chatDAO;
import com.tc.model.chatDTO;
import com.tc.model.chattingRoomDTO;
import com.tc.model.memberDTO;

@WebServlet("/CreateChat")
public class CreateChat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		chatDAO dao = new chatDAO() ;
		chatDTO dto = new chatDTO() ;
		
		HttpSession session = request.getSession() ;
		
		memberDTO chatter = (memberDTO) session.getAttribute("info") ;
		String message = request.getParameter("message") ;
		String roomIdx = request.getParameter("room_idx") ;
		
		System.out.println("CreatChat roomIdx : " + roomIdx);
		System.out.println("CreatChat userId : " + chatter.getUser_id());
		
		dto.setRoom_idx(Integer.parseInt(roomIdx));
		dto.setChatter(chatter.getUser_id());
		dto.setChatting(message);
		
		int cnt = dao.chatInsert(dto) ;
		
		if(cnt > 0) {
			System.out.println("메세지 저장 성공");
			
			dto.setChatter(chatter.getUser_id());
			dto.setChatting(message);
			
			request.setAttribute("chatting", dto);
			System.out.println("채팅 : " + dto);
			
			RequestDispatcher rd = request.getRequestDispatcher("CreateRoom") ;
			rd.forward(request, response);
		}
		else {
			System.out.println("메세지 저장 실패");
		}
	}

}
