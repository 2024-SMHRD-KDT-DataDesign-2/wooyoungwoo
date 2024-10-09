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

.writeButton {
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	writing-mode: horizontal-tb;
	width: auto;
}

.write-dropdown {
	top: 70px;
	left: 73%;
	display: none; /* 기본적으로 숨김 */
	position: absolute;
	background-color: white;
	box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
	z-index: 300;
	border-radius: 5px;
	padding: 10px;
	width: 200px;
	gap: 10px;
	flex-wrap: wrap; /* 항목을 여러 줄로 나누기 위한 설정 */
}

.write-dropdown li {
	flex: 1 1 45%; /* 각 항목의 너비를 45%로 설정 */
	margin: 5px 0;
	list-style: none;
}

.write-dropdown li a {
	text-decoration: none;
	color: black;
	display: block;
	padding: 10px;
	text-align: center;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.write-dropdown li a:hover {
	background-color: #f1f1f1;
}
.logo-image{
color :blue;
}
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
							<a href="MainFeedService"> <img
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
								<li><a href="#">타임 어택</a></li>
								<li><a href="#">가격 제한</a></li>
								<li><a href="#">친환경 요리</a></li>
								<li><a href="#">세계 테마</a></li>
								<li><a href="#">편의점 재료</a></li>
								<li><a href="#">비건 요리</a></li>
								<li><a href="#">비쥬얼 요리</a></li>
								<li><a href="#">반려동물 간식</a></li>
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
							<a href="MakeFeedPage.jsp"> 작성하기 
						</div> </a>
					</li>
				</ul>
				<hr class="line">
			</div>
		</div>
		
			<c:forEach items="${resultList}" var="fdto">
				<form action="FeedService" method="post"
					enctype="multipart/form-data">
					<a href="detailFeed?id=${fdto.feed_idx}" class="feed-move">
						<table>
							<!-- c:forEach 문으로 리스트 출력 -->
							<!-- 한 명의 정보를 하나의 tr에 표시 -->
							<tr>
								<!-- 사용자 프로필 이미지 및 닉네임 -->
								<td class="mini-pro"><img class="mini-pro"
									src="${fdto.user_profile}" alt="User Profile"></td>
								<td class="mini-nic">${fdto.user_nick}</td>
							</tr>
							<!-- 챌린지 제목 -->
							<tr>
								<td colspan="2">
									<h2>${fdto.feed_title}</h2>
								</td>
							</tr>
							<!-- 피드 이미지 -->
							<tr class="feed-img-td">
								<td colspan="2"><img class="feed-img"
									src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/${fdto.feed_img}"
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
		</div>
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