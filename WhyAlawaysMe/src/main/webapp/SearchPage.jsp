<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FeedPage</title>
<style>
@import url("./assets/css/FeedPage.css");
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
									<li><a href="MyPage.jsp">마이 페이지</a></li>
									<li><a href="LogoutService">로그아웃</a></li>
								</ul>
							</div>
						</c:if> <c:if test="${empty info}">
							<a href="LoginAndJoinPage.jsp">로그인</a>
						</c:if></li>
					<li>
						<div class="Write">
							<a href="MakeFeedPage.jsp"> 작성하기 
						</div> </a>
					</li>
				</ul>
				<hr class="line">
			</div>
		</div>

		<!-- --------------------------상단 끝-------------------------------- -->

		<!-- 피드 띄우기 -->
		<c:forEach items="${searchFeed}" var="feed">
			<form action="#">
				<a href="FeedContent.jsp" class="feed-move">
					<table>
						<!-- c:forEach 문으로 리스트 출력 -->
						<!-- 한 명의 정보를 하나의 tr에 표시 -->
						<tr>
							<!-- 사용자 프로필 이미지 및 닉네임 -->
							<td class="mini-pro"><img class="mini-pro"
								src="${feed.user_profile}" alt="User Profile"></td>
							<td class="mini-nic">${feed.user_nick}</td>
						</tr>
						<!-- 챌린지 제목 -->
						<tr>
							<td colspan="2">
								<h2>${feed.feed_title}</h2>
							</td>
						</tr>
						<!-- 피드 이미지 -->
						<tr class="feed-img-td">
							<td colspan="2"><img class="feed-img" src="${feed.feed_img}"
								alt="Feed Image"></td>
						</tr>
						<tr>
							<td>
								<button type="button" class="button-like">좋아요</button>
							</td>
							<td><a href="FeedContent.jsp" class="button-like">댓글</a></td>
						</tr>
					</table>
				</a>
			</form>
			<br>
		</c:forEach>

		<!-- 챌린지 띄우기 -->
		<c:forEach items="${searchChal}" var="chal">
			<form action="#">
				<a href="FeedContent.jsp" class="feed-move">
					<table>
						<!-- c:forEach 문으로 리스트 출력 -->
						<!-- 한 명의 정보를 하나의 tr에 표시 -->
						<tr>
							<!-- 사용자 프로필 이미지 및 닉네임 -->
							<td class="mini-pro"><img class="mini-pro"
								src="${chal.user_profile}" alt="User Profile"></td>
							<td class="mini-nic">${chal.user_nick}</td>
						</tr>
						<!-- 챌린지 제목 -->
						<tr>
							<td colspan="2">
								<h2>${chal.chal_title}</h2>
							</td>
						</tr>
						<!-- 피드 이미지 -->
						<tr class="feed-img-td">
							<td colspan="2"><img class="feed-img" src="${chal.img}"
								alt="Feed Image"></td>
						</tr>
						<tr>
							<td>${chal.chal_st_dt} ~ ${chal.chal_ed_dt}</td>
						</tr>
						<tr>
							<td>
								<button type="button" class="button-like">좋아요</button>
							</td>
							<td><a href="FeedContent.jsp" class="button-like">댓글</a></td>
						</tr>
					</table>
				</a>
			</form>
			<br>
		</c:forEach>

	</div>
	<script src="./assets/js/FeedPage.js"></script>
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

							window.addEventListener('click', function(event) {
								if (!myPageIcon.contains(event.target)
										&& !myPageDropdown
												.contains(event.target)) {
									myPageDropdown.style.display = 'none';
								}
							});
						});
	</script>
</body>
</body>
</html>