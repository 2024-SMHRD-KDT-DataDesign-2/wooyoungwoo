package com.tc.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
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

//		2. 데이터 꺼내오기
		/*
		 * MultipartRequest : 파일 업로드를 위해 필요한 request 객체 1) request : MultipartRequest와
		 * 연결될 request => service 내에 포함, 따로 불러올 필요가 없음
		 * 
		 * 2) path : 서버측에 저장할 경로
		 */
		String path = request.getServletContext().getRealPath("file");
//		-> getServletContext : 현재 실행중인 실제 경로를 보여주는 함수
		System.out.println("path의 경로 : " + path);
		String filePath = "C:\\Users\\smhrd\\Desktop\\Web(Server)\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\WhyAlwaysMe\\file";
		File directory = new File(filePath);

		// 디렉토리가 존재하지 않는 경우 생성
		if (!directory.exists()) {
		    directory.mkdirs();
		}
		/*
		 * 3) maxSize : 파일의 최대 크기를 지정 -> 너무 큰 사이즈가 들어올 경우 과부하 ex) int 자료형,1MB =
		 * 1024*1024 , 5MB = 1024*1024*5
		 */
		int maxSize = 1024 * 1024 * 2; // => 2MB

//		  4) encoding type : 파일의 이름을 인코딩 하기 위한 기능
		String encoding = "UTF-8";

		/*
		 * 5) DefaultFileRenamePolicy : 파일의 이름 중복을 보완하기 위한 객체 (import 필요) => 기존 데이터가 후속
		 * 중복 데이터로 덮어씌워지는 걸 방지하기 위해 비슷한 이름 추천
		 */
		HttpSession session = request.getSession(false); // 세션이 존재하면 반환하고, 없으면 null 반환
		if (session == null) {
			response.sendRedirect("LoginAndJoinPage.jsp"); // 로그인 페이지로 리다이렉트
			return; // 이후 코드 실행 중지
		}

		// 세션에서 사용자 ID 가져오기
		memberDTO loggedUser = (memberDTO) session.getAttribute("info");
		if (loggedUser == null) {
			response.sendRedirect("LoginAndJoinPage.jsp"); // 로그인 페이지로 리다이렉트
			return;
		}

		String user_id = loggedUser.getUser_id(); // 로그인된 사용자 ID
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);

//		  6) form 태그에 입력된 데이터 꺼내오기	
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		
		
		String img = null;

		try {
		    img = URLEncoder.encode(multi.getFilesystemName("img"), "UTF-8");
		} catch (Exception e) {
		    img = null; // 오류 발생 시 img를 null로 설정
		}
//	      URLEncoder => java.net 사용
		
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
