<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import
url("./assets/css/MakeChallengePage.css")
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
						<form action="searchService" class="search-container" method="post">
							<input type="text" name="search" id="search-bar" placeholder="챌린지를 검색하세요">
							<input type="image" class="search-icon" src="http://www.endlessicons.com/wp-content/uploads/2012/12/search-icon.png" alt="Submit" />
						</form>
					</li>
					
					<li>
						<a href="FeedService">피드</a>
					</li>
					
					<li>
						<a href="ChalService">챌린지</a>
					</li>
					
					<li>
						<a href="ChattingRoomService">메세지</a>
					</li>
					
					<li class="menus-megamenus"><a href="#">카테고리 <i
							class="fa fa-angle-down"></i></a>
						<ul class="mega-menus">
							<div class="section">
								<h3>Pages 1</h3>
								<li><a href="#">Submenu 1</a></li>
								<li><a href="#">Submenu 2</a></li>
								<li><a href="#">Submenu 3</a></li>
							</div>
						</ul>
					</li>
						
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
						</c:if>
					</li>
						
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
			<form action="WriteChallengeService" method="post"
				enctype="multipart/form-data">
				<table id="list">
					<tr>
                        <th colspan="2">챌린지 작성</th>
                    </tr>
                    <tr>
                        <td>제목</td>
                        <td><input type="text" name="title"></td>
                    </tr>

					<tr>
						<td>
							파일 선택
						</td>
						<td>
							<input type="file" name="img" style="float: right;">
						</td>
					</tr>
					<tr>
						<td>카테고리</td>
						<td>
							<select name="category" style="width: 100%; padding: 10px; border-radius: 4px;">
								<option value="">카테고리 선택</option>
								<option value="all">챌린지 전체</option>
								<option value="tak">타임어택</option>
								<option value="evn">친환경</option>
								<option value="wtc">세계테마요리</option>
								<option value="gsu">편의점</option>
								<option value="plt">가격제한</option>
								<option value="veg">비건</option>
								<option value="vsl">비쥬얼</option>
								<option value="asn">반려동물간식</option>
							</select>
						</td>
					</tr>

					<tr>
						<td>내용</td>
						<td colspan="2">
							<textarea name="content" rows="20" style="resize: none;"></textarea>
						</td>
					</tr>
					
					<tr>
						<td colspan="2">시작 날짜<input type="date" name="chal_st"></td>
					</tr>
					
					<tr>
						<td colspan="2">종료 날짜<input type="date" name="chal_ed"></td>
					</tr>
					
					<tr>
						<td><input type="reset" value="초기화"></td>
						<td><input type="submit" value="작성하기"></td>
					</tr>
				</table>
			</form>


		</div>
		<script type="text/javascript" src="./assets/js/MakeChallengePage.js"></script>
</body>
</html>