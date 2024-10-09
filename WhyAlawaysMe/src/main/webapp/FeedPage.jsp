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
<jsp:include page="MenuBar.jsp" />
	<div class="main-center">
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
	<script src="./assets/js/FeedPage.js"></script>
</body>
</html>