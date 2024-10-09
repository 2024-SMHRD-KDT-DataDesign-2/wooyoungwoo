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
<!-- 피드 선택칸 -->
	<div class="feed-pick">
		<form action="orderByService" method="post">
			<ul class=cate-choice>
				<li><input type="submit" name="ob" value="랜덤"></li>
				<li><input type="submit" name="ob" value="관심"></li>
				<li><input type="submit" name="ob" value="이웃"></li>
				<li><input type="submit" name="ob" value="카테1"></li>
				<li><input type="submit" name="ob" value="카테2"></li>
				<li><input type="submit" name="ob" value="카테3"></li>
				<li><input type="submit" name="ob" value="카테4"></li>
				<li><input type="submit" name="ob" value="카테5"></li>
				<li><input type="submit" name="ob" value="카테6"></li>
			</ul>
		</form>
	</div>
	<div class="feedContainer">
			<c:forEach items="${orderByList}" var="odbl">
			<div class="feedContent">
				<form action="FeedService" method="post"
					enctype="multipart/form-data">
						<a href="detailChal?id=${cdto.chal_idx}" class="feed-move">
						<div class="feed-container">
							<!-- 사용자 프로필 이미지 및 닉네임 -->
							<div class="feed-profile">
							<img class="mini-pro" src="${odbl.chal_title}" alt="User">
								<span class="mini-nic">${odbl.user_nick}</span>
							<!-- 피드 이미지 -->
							<tr class="feed-img-td">
								<td colspan="2"><img class="feed-img"
									src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/${odbl.img}"
									alt="Feed Image"></td>
							</tr>
							<tr>
								<td>${odbl.chal_st_dt} ~ ${odbl.chal_ed_dt}</td>
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
</body>
</body>
</html>