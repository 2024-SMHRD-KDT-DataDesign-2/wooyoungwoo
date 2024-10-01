package com.tc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tc.model.feedDAO;
import com.tc.model.feedDTO;
import com.tc.model.memberDTO;

@WebServlet("/WriteFeedService")
public class WriteFeedService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		1. 인코딩
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession() ;

		// 세션에서 사용자 ID 가져오기
		memberDTO loggedUser = (memberDTO) session.getAttribute("info");
		if (loggedUser == null) {
			response.sendRedirect("LoginAndJoinPage.jsp"); // 로그인 페이지로 리다이렉트
			return;
		}

		String user_id = loggedUser.getUser_id(); // 로그인된 사용자 ID

//		  6) form 태그에 입력된 데이터 꺼내오기	
		String title = request.getParameter("title") ;
		String content = request.getParameter("content") ;
		String img = request.getParameter("img") ;

		
		System.out.println("tile : " + title);
		System.out.println("content : " + content);
		System.out.println("img : " + img);
		
//		3. 데이터 처리
		feedDAO dao = new feedDAO();
		feedDTO dto = new feedDTO();
		dto.setChal_title(title);
		dto.setChal_content(content);
		dto.setUser_id(user_id);
		dto.setImg(img);
		
		int result = dao.feed_insert(dto);

//		4. 결과 화면 출력
//		Main 화면에서 게시글 전체 내용을 조회할 수 있는 BoardService로 먼저 이동
		response.sendRedirect("FeedPage.jsp");

	}

}
