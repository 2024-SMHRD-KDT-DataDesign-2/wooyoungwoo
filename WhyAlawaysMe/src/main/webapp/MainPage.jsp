<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main_01</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,400italic' rel='stylesheet' type='text/css'>
</head>
<style>
    @import url('./assets/css/MainPage.css');
</style>

<body>
    <div class="main-center">
        <!-- 상단 메뉴바 -->
        <div class="blocks-menus">
            <div class="container">
                <ul class="primary-menus">
                    <li><a href="#">Home</a></li>
                    <li class="search">
                        <form class="search-container">
                            <input type="text" id="search-bar" placeholder="챌린지를 검색하세요">
                            <a href="#"><img class="search-icon"
                                    src="http://www.endlessicons.com/wp-content/uploads/2012/12/search-icon.png"></a>
                        </form>
                    </li>
                    <li>
                        <a href="">피드</a>
                    </li>
                    <li>
                        <a href="ChattingRoomService">메세지</a>
                    </li>
                    <li class="menus-megamenus">
                        <a href="#">카테고리 <i class="fa fa-angle-down"></i></a>
                        <ul class="mega-menus">
                            <div class="section">
                                <h3>Pages 1</h3>
                                <li><a href="#">Submenu 1</a></li>
                                <li><a href="#">Submenu 2</a></li>
                                <li><a href="#">Submenu 3</a></li>
                            </div>
                            <div class="section">
                                <h3>Pages 2</h3>
                                <li><a href="#">Submenu 1</a></li>
                                <li><a href="#">Submenu 2</a></li>
                                <li><a href="#">Submenu 3</a></li>
                            </div>
                        </ul>
                    </li>
                    <c:if test="${empty info}">               
	                    <li>
	                        <a href="LoginAndJoinPage.jsp">로그인</a>
	                    </li>
	                </c:if>
	                <c:if test="${!empty info}">
	                    <li>
	                        <a href="">마이 페이지</a>
	                    </li>
	                    <li>
	                		<a href="LoginAndJoinPage.jsp">작성하기</a>
	                	</li>
	                </c:if>
                </ul>
            </div>
        </div>

        <!-- 오늘의 챌린지 움직이게 -->
        <div class="hero-images">
            <div class="carousel">
                <div class="carousel-item active">
                    <img src="/category_img/미술.jfif" alt="Image 1">
                </div>
                <div class="carousel-item">
                    <img src="/category_img/뷰티.jfif" alt="Image 2">
                </div>
                <div class="carousel-item">
                    <img src="/category_img/스포츠.jpg" alt="Image 3">
                </div>
            </div>
            <a class="carousel-control left" href="#" onclick="prevSlide()">&#10094;</a>
            <a class="carousel-control right" href="#" onclick="nextSlide()">&#10095;</a>
        </div>

        <!-- 미니 카테고리 -> 선택시 피드로 이동 -->
        <div class="mini-cate-bar">
            <div class="mini-cate">
                <a href=""><img class="cate-img" src="/category_img/스포츠.jpg"></a>
                <span>스포츠</span>
            </div>
            <div class="mini-cate">
                <a href=""><img class="cate-img" src="/category_img/요리.jfif"></a>
                <span>요리</span>
            </div>
            <div class="mini-cate">
                <a href=""><img class="cate-img" src="/category_img/음악.jfif"></a>
                <span>음악</span>
            </div>
            <div class="mini-cate">
                <a href=""><img class="cate-img" src="/category_img/뷰티.jfif"></a>
                <span>뷰티</span>
            </div>
            <div class="mini-cate">
                <a href=""><img class="cate-img" src="/category_img/여행.jfif"></a>
                <span>여행</span>
            </div>
            <div class="mini-cate">
                <a href=""><img class="cate-img" src="/category_img/피트니스.JPG"></a>
                <span>피트니스</span>
            </div>
            <div class="mini-cate">
                <a href=""><img class="cate-img" src="/category_img/미술.jfif"></a>
                <span>미술</span>
            </div>
            <div class="mini-cate">
                <a href=""><img class="cate-img" src="/category_img/수집.jfif"></a>
                <span>수집</span>
            </div>
            <div class="mini-cate">
                <a href=""><img class="cate-img" src="/category_img/공예DIY.jfif"></a>
                <span>DIY</span>
            </div>
        </div>
        
          <!-- 하단 전체 -->
          <div class="bottom-total">

            <!-- 챌린지 기능 -->
            <div class="chal-par"><!-- 전체 감싸는 용 -->
                <div class="cal-body"><!-- 아랫 부분 영역 차지 -->
                    <div class="cal-part"><!-- 컨텐츠 영역 -->

                        <!-- 컨텐츠1 -->
                        <div><!-- 각 컨텐츠영역 -->
                            <a href=""><!-- 카테고리로 연결 -->
                                <img src="" alt="">
                                <div><!-- 카테고리 연결 할 부분 -->
                                    <div><!-- 선택한 태그 영역 -->
                                        <div>태그1</div>
                                    </div>
                                    <div>챌린지 제목</div>
                                    <div>챌린지 기간</div>
                                    <div>참여자 미니 아이콘 공간
                                        <span>참여자 사진
                                            <img src="" alt="">
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <!-- 컨텐츠2 -->
                        <div><!-- 각 컨텐츠영역 -->
                            <a href=""><!-- 카테고리로 연결 -->
                                <img src="" alt="">
                                <div><!-- 카테고리 연결 할 부분 -->
                                    <div><!-- 선택한 태그 영역 -->
                                        <div>태그1</div>
                                    </div>
                                    <div>챌린지 제목</div>
                                    <div>챌린지 기간</div>
                                    <div>참여자 미니 아이콘 공간
                                        <span>참여자 사진
                                            <img src="" alt="">
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <!-- 컨텐츠3 -->
                        <div><!-- 각 컨텐츠영역 -->
                            <a href=""><!-- 카테고리로 연결 -->
                                <img src="" alt="">
                                <div><!-- 카테고리 연결 할 부분 -->
                                    <div><!-- 선택한 태그 영역 -->
                                        <div>태그1</div>
                                    </div>
                                    <div>챌린지 제목</div>
                                    <div>챌린지 기간</div>
                                    <div>참여자 미니 아이콘 공간
                                        <span>참여자 사진
                                            <img src="" alt="">
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <!-- 컨텐츠4 -->
                        <div><!-- 각 컨텐츠영역 -->
                            <a href=""><!-- 카테고리로 연결 -->
                                <img src="" alt="">
                                <div><!-- 카테고리 연결 할 부분 -->
                                    <div><!-- 선택한 태그 영역 -->
                                        <div>태그1</div>
                                    </div>
                                    <div>챌린지 제목</div>
                                    <div>챌린지 기간</div>
                                    <div>참여자 미니 아이콘 공간
                                        <span>참여자 사진
                                            <img src="" alt="">
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </div>

                    </div>
                </div>
            </div>

            <!-- 랭크 기능 -->
            <div class="ranking-part"><!-- 랭크 감싸는 영역 -->
                <h3>주간 인기</h3>
                <div>
                    <!-- 랭크1 -->
                    <a href="">
                        <div class="ran-body"><!-- 랭크 감싸는 영역 -->
                            <div class="ran-num-part"><!-- 숫자 부분 -->
                                <span class="ran-num">1</span>
                            </div>
                            <div class="ran-con-part"><!-- 내용 감싸는 부분 -->
                                <div class="ran-con-top"><!-- 작성자 미니프로필,닉네임 -->
                                    <div class="ran-pro"><!-- 작성자 미니프로필 -->
                                        <img class="mini-pro" src="" alt="">
                                    </div>
                                    <div><!-- 작성자 닉네임 -->
                                        <p class="ran-nick">
                                            <span>닉네임</span>
                                        </p>
                                    </div>
                                </div>
                                <p class="ran-cal-con">챌린지 내용 간략화</p>
                            </div>
                        </div>
                    </a>

                    <!-- 랭크2 -->
                    <a href="">
                        <div class="ran-body"><!-- 랭크 감싸는 영역 -->
                            <div class="ran-num-part"><!-- 숫자 부분 -->
                                <span class="ran-num">2</span>
                            </div>
                            <div class="ran-con-part"><!-- 내용 감싸는 부분 -->
                                <div class="ran-con-top"><!-- 작성자 미니프로필,닉네임 -->
                                    <div class="ran-pro"><!-- 작성자 미니프로필 -->
                                        <img class="mini-pro" src="" alt="">
                                    </div>
                                    <div><!-- 작성자 닉네임 -->
                                        <p class="ran-nick">
                                            <span>닉네임</span>
                                        </p>
                                    </div>
                                </div>
                                <p class="ran-cal-con">챌린지 내용 간략화</p>
                            </div>
                        </div>
                    </a>

                    <!-- 랭크3 -->
                    <a href="">
                        <div class="ran-body"><!-- 랭크 감싸는 영역 -->
                            <div class="ran-num-part"><!-- 숫자 부분 -->
                                <span class="ran-num">3</span>
                            </div>
                            <div class="ran-con-part"><!-- 내용 감싸는 부분 -->
                                <div class="ran-con-top"><!-- 작성자 미니프로필,닉네임 -->
                                    <div class="ran-pro"><!-- 작성자 미니프로필 -->
                                        <img class="mini-pro" src="" alt="">
                                    </div>
                                    <div><!-- 작성자 닉네임 -->
                                        <p class="ran-nick">
                                            <span>닉네임</span>
                                        </p>
                                    </div>
                                </div>
                                <p class="ran-cal-con">챌린지 내용 간략화</p>
                            </div>
                        </div>
                    </a>

                    <!-- 랭크4 -->
                    <a href="">
                        <div class="ran-body"><!-- 랭크 감싸는 영역 -->
                            <div class="ran-num-part"><!-- 숫자 부분 -->
                                <span class="ran-num">4</span>
                            </div>
                            <div class="ran-con-part"><!-- 내용 감싸는 부분 -->
                                <div class="ran-con-top"><!-- 작성자 미니프로필,닉네임 -->
                                    <div class="ran-pro"><!-- 작성자 미니프로필 -->
                                        <img class="mini-pro" src="" alt="">
                                    </div>
                                    <div><!-- 작성자 닉네임 -->
                                        <p class="ran-nick">
                                            <span>닉네임</span>
                                        </p>
                                    </div>
                                </div>
                                <p class="ran-cal-con">챌린지 내용 간략화</p>
                            </div>
                        </div>
                    </a>

                    <!-- 랭크5 -->
                    <a href="">
                        <div class="ran-body"><!-- 랭크 감싸는 영역 -->
                            <div class="ran-num-part"><!-- 숫자 부분 -->
                                <span class="ran-num">5</span>
                            </div>
                            <div class="ran-con-part"><!-- 내용 감싸는 부분 -->
                                <div class="ran-con-top"><!-- 작성자 미니프로필,닉네임 -->
                                    <div class="ran-pro"><!-- 작성자 미니프로필 -->
                                        <img class="mini-pro" src="" alt="">
                                    </div>
                                    <div><!-- 작성자 닉네임 -->
                                        <p class="ran-nick">
                                            <span>닉네임</span>
                                        </p>
                                    </div>
                                </div>
                                <p class="ran-cal-con">챌린지 내용 간략화</p>
                            </div>
                        </div>
                    </a>

                </div>
            </div>
        </div>

    </div>


    <script src="./assets/js/MainPage.js">
    </script>
</body>

</html>