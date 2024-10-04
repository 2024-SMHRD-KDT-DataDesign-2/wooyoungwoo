package com.tc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tc.model.chalDAO;
import com.tc.model.chalDTO;


@WebServlet("/MainChallnegeService")
public class MainChallengeService extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       chalDAO dao = new chalDAO() ;
       
       List<chalDTO> chalList = dao.chalSelect() ;
       
       request.setAttribute("chalList", chalList);
      System.out.println("피드 목록 : " + chalList);
      
      RequestDispatcher rd = request.getRequestDispatcher("MainPage.jsp") ;
      rd.forward(request, response);
    }

}
