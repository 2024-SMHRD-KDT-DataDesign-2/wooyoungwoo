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

import com.tc.model.chalDAO;
import com.tc.model.chalDTO;

@WebServlet("/detailChal")
public class detailChal extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		1. DAO 생성
		chalDAO dao = new chalDAO();

//		=> DB에서 전체 회원 조회하는 기능
		List<chalDTO> detailChalList = dao.detailchal();
		System.out.println("chalDAO에서 가져온 피드 리스트: " + detailChalList);  // 가져온 데이터 전체 출력
		System.out.println("List 크기: " + detailChalList.size());  // 리스트 크기 출력
		
//		3. request scope 에 전체 회원 정보 담기
		HttpSession session = request.getSession();

		session.setAttribute("detailChalList", detailChalList);
		System.out.println("전체 회원 정보 : " + session.getAttribute("detailChalList"));
		
//		4. select.jsp로 이동 forward 방식 
		
		  RequestDispatcher rd = request.getRequestDispatcher("ChallengeContent.jsp");
		  rd.forward(request, response);
		 
	
	}

}
