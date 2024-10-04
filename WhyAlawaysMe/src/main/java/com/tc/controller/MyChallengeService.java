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
import com.tc.model.memberDTO;

@WebServlet("/MyChallengeService")
public class MyChallengeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("마이 피드 서비스 들어옴");
		
		HttpSession session = request.getSession();
		chalDAO dao = new chalDAO();
		chalDTO dto = new chalDTO();

		memberDTO mbdto = (memberDTO) session.getAttribute("info");

		dto.setUser_id(mbdto.getUser_id());

		List<chalDTO> myChalList = dao.myChalSelect(dto);

		System.out.println("나의 챌린지 목록 : " + myChalList);

		if (myChalList != null) {
			// 1. session 영역 활용
			session.setAttribute("mychalList", myChalList);

			RequestDispatcher rd = request.getRequestDispatcher("MyPage.jsp");
			rd.forward(request, response);

		}
	}

}
