package com.tc.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tc.model.chalDAO;
import com.tc.model.chalDTO;

@WebServlet("/detailChal")
public class detailChal extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. URL에서 전달된 feedIdx 파라미터 값 가져오기
        String feedIdxStr = request.getParameter("feedIdx");

        if (feedIdxStr != null && !feedIdxStr.isEmpty()) {
            try {
                int feedIdx = Integer.parseInt(feedIdxStr);  // feedIdx 값이 숫자인지 확인

                // 2. DAO 객체 생성 및 데이터 조회
                chalDAO dao = new chalDAO();
                chalDTO detailChal = dao.detailChal(feedIdx);  // 특정 feedIdx에 대한 챌린지 세부 정보 가져오기

                // 3. 가져온 세부 챌린지 정보를 request 객체에 설정하여 JSP에 전달
                request.setAttribute("detailChal", detailChal);

                // 4. 세부 챌린지 내용을 표시할 JSP로 이동
                RequestDispatcher dispatcher = request.getRequestDispatcher("ChallengeContent.jsp");
                dispatcher.forward(request, response);

            } catch (NumberFormatException e) {
                System.out.println("feedIdx 값이 유효하지 않습니다: " + feedIdxStr);
                response.sendRedirect("errorPage.jsp");  // 유효하지 않은 값인 경우 에러 페이지로 리다이렉트
            }
        } else {
            System.out.println("feedIdx 파라미터가 전달되지 않았습니다.");
            response.sendRedirect("errorPage.jsp");  // 파라미터가 전달되지 않은 경우 에러 페이지로 리다이렉트
        }
    }
}
