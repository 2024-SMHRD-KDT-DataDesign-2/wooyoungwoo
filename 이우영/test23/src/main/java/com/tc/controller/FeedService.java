package com.tc.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/FeedService")
public class FeedService extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        String path = request.getServletContext().getRealPath("file");
        File uploadDir = new File(path);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();  // 디렉터리 생성
        }
        System.out.println("path의 경로 : "+ path);
        HttpSession session = request.getSession();
        String user_id = (String) session.getAttribute("user_id"); 
        // 세션에서 유저 ID 가져오기
        
        int maxSize = 1024*1024*2;  // 2MB
        String encoding = "UTF-8";
        DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
        
        try {
            MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
            System.out.println("MultipartRequest 객체 생성 성공");
            
            String chal_title = multi.getParameter("chal_title");
            String chal_content = multi.getParameter("chal_content");
            String chal_st_dt = multi.getParameter("chal_st_dt");
            String chal_ed_dt = multi.getParameter("chal_ed_dt");
            
            System.out.println("CHAL_TITLE : " + chal_title);
            System.out.println("CHAL_CONTENT : " + chal_content);
            System.out.println("CHAL_ST_DT : " + chal_st_dt);
            System.out.println("CHAL_ED_DT : " + chal_ed_dt);
            System.out.println("USER_ID : " + user_id);
            
        } catch (Exception e) {
            System.out.println("MultipartRequest 생성 오류 발생");
            e.printStackTrace();
        }
        
        response.sendRedirect("FeedPage.jsp");
    }
}
