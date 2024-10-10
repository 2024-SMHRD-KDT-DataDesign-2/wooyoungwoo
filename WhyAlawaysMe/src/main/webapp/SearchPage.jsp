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
		<!-- --------------------------상단 끝-------------------------------- -->
		<!-- 피드 띄우기 -->
		<c:forEach items="${searchFeed}" var="feed">
			<form action="#">
				<a href="ChalService" class="feed-move">
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
							<td>${chal.chal_st_dt}~ ${chal.chal_ed_dt}</td>
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

		<!--테스트  -->
		<div class="feedContainer">
			<c:forEach items="${searchFeed}" var="feed">
				<div class="feedContent">
					<form action="FeedService" method="post"
						enctype="multipart/form-data">
						<a href="detailFeed?id=${feed.feed_idx}" class="feed-move">
							<div class="feed-container">
								<!-- 사용자 프로필 이미지 및 닉네임 -->
								<div class="feed-profile">
									<img class="mini-pro" src="${feed.user_profile}" alt="User">
									<span class="mini-nic">${feed.user_nick}</span>
								</div>
								<!-- 챌린지 제목 -->
								<div class="feed-title">
									<span>${feed.feed_title}</span>
								</div>
								<div class="feed-content">
									<span>${feed.feed_content}</span>
								</div>
								<!-- 피드 이미지 -->
								<div class="feed-img-container">
									<img class="feed-img"
										src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/${feed.feed_img}"
										alt="Feed Image">
								</div>
							</div>
						</a>
						<div class="feed-actions">
							<!-- 배경 제거된 좋아요 버튼 -->
							<button type="button" class="button-like" id="likeButton">
								<img
									src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/thumbUpBlank.png"
									class="thumb" alt="Like" id="likeIcon">
							</button>
							<!-- 좋아요 갯수를 표시하는 영역 -->
							<span class="like-count" id="likeCount">0</span>
							<!-- 댓글 버튼에 이미지 추가 -->
							<a href="FeedContent.jsp" class="button-comment"> <img
								src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/comment.png"
								class="comment-icon" alt="Comment">
							</a>
						</div>
					</form>
					<br>
				</div>
				<hr class="feed-end">
			</c:forEach>
		</div>

		<script src="./assets/js/FeedPage.js"></script>
		<script>
	document.addEventListener('DOMContentLoaded', function () {
	      const likeButton = document.getElementById('likeButton');
	      const likeIcon = document.getElementById('likeIcon');
	      const likeCount = document.getElementById('likeCount');

	      let isLiked = false; // 좋아요 상태를 추적하기 위한 변수
	      let count = 0; // 좋아요 갯수 초기값

	      likeButton.addEventListener('click', function () {
	          // 좋아요 상태에 따라 아이콘 변경 및 갯수 증가
	          if (isLiked) {
	              likeIcon.src = 'https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/thumbUpBlank.png'; // 원래 아이콘으로 변경
	              count--; // 좋아요 갯수 감소
	          } else {
	              likeIcon.src = 'https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/thumbUp.png'; // 좋아요가 눌린 아이콘으로 변경
	              count++; // 좋아요 갯수 증가
	          }

	          // 좋아요 상태 반전
	          isLiked = !isLiked;
	          likeCount.textContent = count; // 좋아요 갯수 업데이트
	      });
	  });
	</script>

	</div>
	<script src="./assets/js/FeedPage.js"></script>
</body>
</body>
</html>