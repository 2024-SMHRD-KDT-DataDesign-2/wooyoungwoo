<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url("./assets/css/MakeFeedPage.css");
</style>

</head>
<body>
	<div class="main-center">
		<!-- 상단 메뉴바 -->
		<div class="blocks-menus">
			<div class="container">
				<ul class="primary-menus">
					<li>
						<!-- 로고와 메뉴를 담는 전체 컨테이너 -->
						<div class="logo-container">
							<!-- 로고 이미지가 위치한 링크 -->
							<a href="MainPage.jsp"> <img
								src=https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/%EC%9D%B4%EC%9A%B0%EC%98%81/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EB%A1%9C%EA%B3%A0.png
								alt="" class="logo-image">
							</a>
						</div>
					</li>
					<li class="search">
						<form action="searchService" class="search-container"
							method="post">
							<input type="text" name="search" id="search-bar"
								placeholder="챌린지를 검색하세요"> <input type="image"
								class="search-icon"
								src="http://www.endlessicons.com/wp-content/uploads/2012/12/search-icon.png"
								alt="Submit" />
						</form>
					</li>
					<li><a href="FeedService" class="search-container">피드</a></li>
					<li><a href="ChalService" class="search-container">챌린지</a></li>
					<li><a href="ChattingRoomService" class="search-container">
							메세지</a></li>
					<li class="menus-megamenus"><a href="#">카테고리 <i
							class="fa fa-angle-down"></i></a>
						<ul class="mega-menus">
							<div class="section">
								<h3>Pages 1</h3>
								<li><a href="#">Submenu 1</a></li>
								<li><a href="#">Submenu 2</a></li>
								<li><a href="#">Submenu 3</a></li>
							</div>
						</ul></li>
					<li><c:if test="${!empty info}">
							<div class="mypage-container">
								<img class="mypage-icon"
									src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/%EC%9D%B4%EC%9A%B0%EC%98%81/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EB%A7%88%EC%9D%B4%ED%8E%98%EC%9D%B4%EC%A7%80.png"
									alt="MyPageIcon">
								<ul class="mypage-dropdown">
									<li><a href="MyFeedService">마이 페이지</a></li>
									<li><a href="LogoutService">로그아웃</a></li>
								</ul>
							</div>
						</c:if> <c:if test="${empty info}">
							<a href="LoginAndJoinPage.jsp">로그인</a>
						</c:if></li>
					<li>
						<div class="Write">
							<a href="MakeFeedPage.jsp">작성하기</a>
						</div>
					</li>
				</ul>
				<hr class="line">
			</div>
		</div>

		<div>
			<!-- 파일 업로드시 사용해야하는 속성 ! enctype 
					 1. 파일 업로드시 form 태그에서 꼭 필요한 속성
					 2. post 방식일때만 사용이 가능 -->
			<form action="WriteFeedService" method="post"
				enctype="multipart/form-data">
				<table id="list">
					<tr>
						<td>제목</td>
						<td><input type="text" name="title"></td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2"> 
						<input type="file" name="img" style="float: right;">
						<textarea name="content" rows="10"
								style="resize: none;"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="reset" value="초기화"> <input
							type="submit" value="작성하기"></td>
					</tr>
				</table>
			</form>
		</div>
		<script>
			document
					.addEventListener(
							'DOMContentLoaded',
							function() {
								const myPageIcon = document
										.querySelector('.mypage-icon');
								const myPageDropdown = document
										.querySelector('.mypage-dropdown');

								myPageIcon
										.addEventListener(
												'click',
												function() {
													myPageDropdown.style.display = myPageDropdown.style.display === 'flex' ? 'none'
															: 'flex';
												});

								window
										.addEventListener(
												'click',
												function(event) {
													if (!myPageIcon
															.contains(event.target)
															&& !myPageDropdown
																	.contains(event.target)) {
														myPageDropdown.style.display = 'none';
													}
												});
							});
		</script>
</body>
</html>