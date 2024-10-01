package com.tc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tc.model.feedDAO;
import com.tc.model.feedDTO;


@WebServlet("/FeedService")
public class FeedService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	feedDAO dao = new feedDAO() ;
    	
    	List<feedDTO> feedList = dao.feedSelect() ;
    	
    	request.setAttribute("feedList", feedList);
		System.out.println("피드 목록 : " + feedList);
		
		RequestDispatcher rd = request.getRequestDispatcher("MainPage.jsp") ;
		rd.forward(request, response);
    }

}
