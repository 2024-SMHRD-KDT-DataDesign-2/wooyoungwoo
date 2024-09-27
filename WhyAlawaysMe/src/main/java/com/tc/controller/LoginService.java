package com.chall.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chall.model.memberDAO;
import com.chall.model.memberDTO;


@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// id 객체 가져오기
		String id = request.getParameter("id") ;
		// pw 객체 가져오기
		String pw = request.getParameter("pw") ;
		
		memberDTO dto = new memberDTO() ;
		memberDAO dao = new memberDAO() ;
		
		dto.setUser_id(id);
		dto.setUser_pw(pw);		
		
		memberDTO resultDTO = dao.login(dto) ;
		
		System.out.println("resultDTO : " + resultDTO);
		
		if(resultDTO != null) {
			System.out.println(resultDTO.getUser_nick() + " 로그인 성공");
			
			// 1. session 영역 활용
			HttpSession session = request.getSession() ;
			session.setAttribute("info", resultDTO);
			
			response.sendRedirect("MainPage.jsp");
			
		}
		else {
			System.out.println("로그인 실패");
			response.sendRedirect("LoginAndJoinPage.jsp");
		}
	}
}
