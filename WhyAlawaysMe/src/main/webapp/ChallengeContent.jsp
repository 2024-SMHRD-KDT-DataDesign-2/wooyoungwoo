<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" style="">
<head>
<meta charset="utf-8">
<title>FeedContents</title>
<link rel="preload" href="/_next/static/media/17e83dbff61c048c.p.woff2"
	as="font" type="font/woff2" crossorigin="anonymous">
<link rel="preload" href="/_next/static/media/2cfaf186eda0c132.p.woff2"
	as="font" type="font/woff2" crossorigin="anonymous">
<link rel="preload" href="/_next/static/media/430406a62c0d062d.p.woff2"
	as="font" type="font/woff2" crossorigin="anonymous">
<link rel="preload" href="/_next/static/media/62f2cc7c46d83665.p.woff2"
	as="font" type="font/woff2" crossorigin="anonymous">
<link rel="preload" href="/_next/static/css/6249e7ecdfa17830.css"
	as="style">
<link rel="stylesheet" href="/_next/static/css/6249e7ecdfa17830.css"
	data-n-g="">
<link rel="preload" href="/_next/static/css/9a9f3994aa3a61b7.css"
	as="style">
<link as="script" rel="prefetch"
	href="/_next/static/chunks/1344-41f24348b92a6348.js">
<link as="script" rel="prefetch"
	href="/_next/static/chunks/pages/notice/detail.html-4e8fc7159f52dd3c.js">
<link as="script" rel="prefetch"
	href="/_next/static/chunks/pages/policyV2-417305c51057b57d.js">
<link as="script" rel="prefetch"
	href="/_next/static/chunks/pages/privacyV2-a3bb0e3b154c0658.js">
<style data-n-href="/_next/static/css/12f6d34bc1f84336.css">
@import url("./assets/css/FeedContent.css");

.mypage-container {
	position: relative;
	display: inline-block;
}

.mypage-icon {
	width: 30px;
	height: auto;
	cursor: pointer;
}

.mypage-dropdown {
	display: none; /* 기본적으로 숨김 */
	position: absolute;
	top: 40px;
	left: 0;
	background-color: white;
	box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
	z-index: 300;
	border-radius: 5px;
	padding: 10px;
	width: 200px;
	gap: 10px;
	flex-wrap: wrap; /* 항목을 여러 줄로 나누기 위한 설정 */
}

.mypage-dropdown li {
	flex: 1 1 45%; /* 각 항목의 너비를 45%로 설정 */
	margin: 5px 0;
	list-style: none;
}

.mypage-dropdown li a {
	text-decoration: none;
	color: black;
	display: block;
	padding: 10px;
	text-align: center;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.mypage-dropdown li a:hover {
	background-color: #f1f1f1;
}

.line {
	color: black;
	border-top: 1px solid #000; /* 선의 두께와 색상 */
	margin-top: 0; /* 상단 여백 없애기 */
	margin-bottom: 0; /* 하단 여백 없애기 */
}

.Write {
	background-color: grey; /* 배경색을 검정색으로 설정 */
	border-radius: 20px; /* 둥글게 만들기 */
	display: inline-block; /* 요소를 inline-block으로 설정 */
}

.Write a {
	color: white; /* 글자색을 흰색으로 설정 */
	text-decoration: none; /* 링크의 밑줄 제거 */
}

.content-container {
	width: 80%;
	height: auto;
	backgroud-color: white;
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

		<!-- 상세 피드 내용  -->
		<div class="content-container">
			<div class="detail-challenge_content__Ggn9l">
				<div class="content-main">
					<img src="${chalDetail.img}" alt="challenge-detail_image"
						class="Main_template__image__OBRGn" loading="lazy"
						style="color: transparent;">
					<div class="Main_content__QSnMW">
						<a href="MyPage.jsp">
							<div class="ChallengeHostImage_host__ddIMk">
								<img alt="challengehost"
									srcset="http://images.munto.kr/production-user/1726553700630-photo-23gbn-22000-0?s=64x64 1x, http://images.munto.kr/production-user/1726553700630-photo-23gbn-22000-0?s=128x128 2x"
									src="${chalDetail.user_profile}" width="50" height="50"
									decoding="async" data-nimg="1"
									class="ChallengeHostImage_host__image__dT0hM" loading="lazy"
									style="color: transparent;">
							</div>
							<div class="Main_content__host-name__ZVaSk">${chalDetail.user_nick}</div>
						</a>
					</div>
					<div class="Main_content__title__xS6_f">[${chalDetail.chal_title}]</div>
				</div>
				<div class="Commenter_introduce__URA1O">
					<div class="Commenter_introduce__content__03SRv">${chalDetail.chal_content}</div>
					<div class="Commenter_introduce__additional__KNK_K"
						aria-hidden="true">더보기</div>
				</div>
				<div class="Info_template__XuHUA">
					<div class="Info_member__zouhM">
						<div class="ChallengeHostImage_host__ddIMk">
							<img alt="challengehost"
								srcset="https://images.munto.kr/munto-web/ic_info_challengeleader_24px.svg?s=32x32 1x, https://images.munto.kr/munto-web/ic_info_challengeleader_24px.svg?s=48x48 2x"
								src="https://images.munto.kr/munto-web/ic_info_challengeleader_24px.svg?s=48x48"
								width="24" height="24" decoding="async" data-nimg="1"
								class="ChallengeHostImage_host__state__6gKQO" loading="lazy"
								style="color: transparent;">
						</div>
						</a>
					</div>
				</div>
				<div class="Info_notification__sdE9J">
					<div class="Info_notification__title__HZ925">안내사항</div>
					<div class="Info_notification__introduce__JJNE2">자세한 정보를
						알려드릴게요</div>
					<div class="Info_notification__detail__RdfMP">
						<span class="Info_detail__kAjrp"><img alt="map"
							srcset="https://images.munto.kr/munto-web/info_group.svg?s=32x32 1x, https://images.munto.kr/munto-web/info_group.svg?s=48x48 2x"
							src="https://images.munto.kr/munto-web/info_group.svg?s=48x48"
							width="24" height="24" decoding="async" data-nimg="1"
							class="Info_detail__image__CiTMF" loading="lazy"
							style="color: transparent;">
							<div class="Info_detail__info__lpAiz">25명</div> </span> <span
							class="Info_detail__kAjrp"><img alt="member"
							srcset="https://images.munto.kr/munto-web/ic_info_certification_24px.svg?s=32x32 1x, https://images.munto.kr/munto-web/ic_info_certification_24px.svg?s=48x48 2x"
							src="https://images.munto.kr/munto-web/ic_info_certification_24px.svg?s=48x48"
							width="24" height="24" decoding="async" data-nimg="1"
							class="Info_detail__image__CiTMF" loading="lazy"
							style="color: transparent;">
							<div class="Info_detail__info__lpAiz">주 1회 인증</div> </span> <span>
							<div>${chalDetail.chal_st_dt}~${chalDetail.chal_ed_dt}</div>
							<div>진행 기간</div>
						</span>
					</div>
				</div>
				<!-- 좋아요 및 댓글 기능 추가 -->
				<div class="like-comment-section"
					style="padding: 20px; text-align: center;">
					<div class="like-button"
						style="display: inline-block; margin-right: 20px;">
						<button id="likeBtn"
							style="background-color: #3498db; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;">
							<span id="likeText">좋아요</span> (<span id="likeCount">0</span>)
						</button>
					</div>
						<form action="parChalService" method="post">
							<input type="hidden" name="chal_idx" value="${chalDetail.chal_idx}">
							<!-- 챌린지 ID -->
							<input type="hidden" name="user_id" value="${chalDetail.user_id}">
							<!-- 사용자 ID -->
							<div class="par_chal">
								<input type="submit" value="참여하기">
							</div>
						</form>
					<div class="comment-section" style="display: inline-block;">
						<button id="commentBtn"
							style="background-color: #2ecc71; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;">
							댓글 남기기</button>
					</div>

					<!-- 댓글 작성 폼 -->
					<div id="commentForm" style="display: none; margin-top: 20px;">
						<textarea id="commentInput" placeholder="댓글을 입력하세요"
							style="width: 100%; padding: 10px; border-radius: 5px; border: 1px solid #ccc;"></textarea>
						<button id="submitComment"
							style="background-color: #27ae60; color: white; border: none; padding: 10px 20px; margin-top: 10px; cursor: pointer;">댓글
							등록</button>
					</div>


					<!-- 댓글 목록 -->
					<div id="commentList" style="margin-top: 20px;">
						<h3>댓글</h3>
						<ul id="comments" style="list-style: none; padding: 0;"></ul>
					</div>
				</div>
			</div>
		</div>
		<script src="./assets/js/FeedContent.js">
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

