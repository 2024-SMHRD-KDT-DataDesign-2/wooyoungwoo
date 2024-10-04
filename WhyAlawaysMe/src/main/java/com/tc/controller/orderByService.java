package com.tc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/orderByService")
public class orderByService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String ob = request.getParameter("ob") ;
    	
    	if(ob.equals("랜덤")) {
    		HttpSession session = request.getSession() ;
    		
    		session.getAttribute("") ;
    	}
    }
}
