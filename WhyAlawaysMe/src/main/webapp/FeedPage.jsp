<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
@import url("./assets/css/FeedPage.css");
/* 로고 스타일 */
.logo-container {
	display: inline-block;
	vertical-align: middle;
	margin-right: 30px; /* 메뉴와 로고 간격 */
}

.logo-image {
	height: 40px; /* 로고 높이 조절 */
	width: auto; /* 자동 너비 비율 */
	transition: transform 0.3s ease-in-out;
}

/* 로고에 호버 효과 추가 */
.logo-container a:hover .logo-image {
	transform: scale(1.1); /* 호버 시 로고 확대 */
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
							<a href="MainPage.jsp"> <img
								src=https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/%EC%9D%B4%EC%9A%B0%EC%98%81/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EB%A1%9C%EA%B3%A0.png
								alt="" class="logo-image">
							</a>
						</div>
					</li>
					<li class="search">
						<form class="search-container">
							<input type="text" id="search-bar" placeholder="챌린지를 검색하세요">
							<a href="#"><img class="search-icon"
								src="http://www.endlessicons.com/wp-content/uploads/2012/12/search-icon.png"></a>
						</form>
					</li>
					<li><a href="FeedPage.jsp">피드</a></li>
					<li><a href="ChattingPage.jsp">메세지</a></li>
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
					<li><a href="MyPage.jsp">마이 페이지</a></li>
					<li><c:if test="${!empty info}">
							<a href="LogoutService">로그아웃</a>
						</c:if> <c:if test="${empty info}">
							<a href="LoginAndJoinPage.jsp">로그인</a>
						</c:if></li>
					<li><a href="MakeFeedPage.jsp">작성하기</a></li>
				</ul>
			</div>
		</div>

		<!-- 피드 내용 -->
		<form action=>
			<a href="FeedContent.jsp" class="feed-move">
				<table>
					<tr>
						<td class="mini-pro"><img class="mini-pro"
							src="/test3/img/check.png" alt=""></td>
						<td class="mini-nic">nick name</td>
					</tr>
					<tr>
						<td colspan="2">
							<h2>제목</h2>
						</td>
					</tr>
					<tr class="feed-img-td">
						<td colspan="2"><img class="feed-img"
							src="/test3/img/check.png" alt=""></td>
					</tr>
				</table>
			</a> <br>
			<td><button type="button" class="button-like">좋아요</button></td>
			<td><a href="FeedContent.jsp" class="button-like">댓글</a>
				</button></td>
		</form>

		<!-- 피드2  -->
		<form action=>
			<a href="FeedContent.jsp" class="feed-move">
				<table>
					<tr>
						<td class="mini-pro"><img class="mini-pro"
							src="/test3/img/check.png" alt=""></td>
						<td class="mini-nic">nick name</td>
					</tr>
					<tr>
						<td colspan="2">
							<h2>제목</h2>
						</td>
					</tr>
					<tr class="feed-img-td">
						<td colspan="2"><img class="feed-img"
							src="/test3/img/check.png" alt=""></td>
					</tr>
				</table>
			</a> <br>
			<td><button type="button" class="button-like">좋아요</button></td>
			<td><a href="FeedContent.jsp" class="button-like">댓글</a>
				</button></td>
		</form>

		<!-- 피드3 -->
		<form action=>
			<a href="FeedContent.jsp" class="feed-move">
				<table>
					<tr>
						<td class="mini-pro"><img class="mini-pro"
							src="/test3/img/check.png" alt=""></td>
						<td class="mini-nic">nick name</td>
					</tr>
					<tr>
						<td colspan="2">
							<h2>제목</h2>
						</td>
					</tr>
					<tr class="feed-img-td">
						<td colspan="2"><img class="feed-img"
							src="/test3/img/check.png" alt=""></td>
					</tr>
				</table>
			</a> <br>
			<td><button type="button" class="button-like">좋아요</button></td>
			<td><a href="FeedContent.jsp" class="button-like">댓글</a>
				</button></td>
		</form>

		<!-- 피드4 -->
		<form action=>
			<a href="FeedContent.jsp" class="feed-move">
				<table>
					<tr>
						<td class="mini-pro"><img class="mini-pro"
							src="/test3/img/check.png" alt=""></td>
						<td class="mini-nic">nick name</td>
					</tr>
					<tr>
						<td colspan="2">
							<h2>제목</h2>
						</td>
					</tr>
					<tr class="feed-img-td">
						<td colspan="2"><img class="feed-img"
							src="/test3/img/check.png" alt=""></td>
					</tr>
				</table>
			</a> <br>
			<td><button type="button" class="button-like">좋아요</button></td>
			<td><a href="FeedContent.jsp" class="button-like">댓글</a>
				</button></td>
		</form>
	</div>
	<script src="./assets/js/FeedPage.js"></script>
</body>
</html>