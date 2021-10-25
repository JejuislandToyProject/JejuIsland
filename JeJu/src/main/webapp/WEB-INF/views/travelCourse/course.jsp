<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TravelCourse</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://kit.fontawesome.com/cc0398a704.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/css/courseCSS/button.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/courseCSS/leftSection.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/courseCSS/rightSection.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/courseCSS/modal.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/courseCSS/main.css"/>">

<!-- 드래그 앤 드롭 -->
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" ></script>

</head>
<body>

	<div class="save-modal">
		<div class="save-modal-content">
			<div class="saveCourseModalTitle">
				내가 선택한 여행 경로 
				<button class="btn-close"></button>
			</div>
			
			<div id="courseItems"></div>
			<div class="saveCourseModalBtn"><button type="button"class="btn btn btn-90"style="color: white; background-color: orange;">저장하기</button></div>
			
		</div>
	</div>
	<div class="save-overlay"></div>


	<div class="introduce-modal">
		<div class="modal-content">
			<button class="introduce-close">&times;</button>
			<img
				src="https://i2.wp.com/blog.findmybucketlist.com/wp-content/uploads/2020/10/%EC%A0%9C%EC%A3%BC%EB%8F%84-2.jpg?resize=792%2C446&ssl=1"
				style="width: 100%; height: 100%;">
		</div>
	</div>
	<div class="overlay"></div>


	<div class="courseTopbar">
		<div></div>
		<div class="courseLogoBox">
			<div>J E J U</div>
			<div>MAKE YOUR TRAVEL COURSE</div>
		</div>
		<div></div>
		<div>H O M E</div>
	</div>

	<div class="courseGridContainer">

		<div class="courseSelectList">
			<div class="courseZero_margin90"></div>
			<div class="leftSidebar-1">
				<div>제주도 날씨</div>
				<div>Jeju Weather</div>
				<div id="weather-flex">
					<div id="weather-con"></div>
					<div>
						<div id="temp"></div>
						<br>
						<div id="pty"></div>
					</div>
				</div>
				<div>
					<button type="button"
						onclick="location.href='https://www.kma.go.kr/jeju/html/main/index.jsp'"
						class="btn btn btn-90"
						style="color: white; background-color: orange;">제주도 기상청
						가기</button>
				</div>
			</div>
			<hr>
			<div class="leftSidebar-2">
				<div>선택 목록</div>
				<div>Select List</div>
				<br>
				<div>
					<button id="allDelete" type="button"
						class="btn btn bg-gradient-danger btn-90" style="color: white;">선택목록
						전체삭제</button>
				</div>
			</div>

			<ul id="leftSidebar-3"></ul>
		</div>

		<div class="center-box">
			<div class="courseZero_margin90"></div>
			<div id="map" style="width: 100%; height: 962px;"></div>
			<div class="btn-box">
				<button type="button" id="useMethodBtn" class="btn btn-md"
					style="background-color: #FFFFFF; opacity: 0.8; color: #242424;">이용방법</button>
				<button type="button" id="rollbackBtn" class="btn btn-md"
					style="background-color: #FFFFFF; opacity: 0.8; color: #242424;">지도
					원위치</button>
				<button type="button"id="enrollRestaurantBtn"
					onclick="location.href=''" class="btn btn-md"
					style="background-color: #FFFFFF; opacity: 0.8; color: #242424;">맛집등록
					하기</button>
				<button type="button" id="enrollSpotBtn" onclick="location.href=''"
					class="btn btn-md"
					style="background-color: #FFFFFF; opacity: 0.8; color: #242424;">관광명소
					등록</button>
				<button type="button" id="lookCourseBtn" class="btn btn-md"
					style="background-color: #FFFFFF; opacity: 0.8; color: #242424;">여행경로
					보기</button>
				<button type="button" id="saveCourseBtn" class="btn btn-md"
					style="background-color: #FFFFFF; opacity: 0.8; color: #242424;">여행경로
					저장</button>
			</div>
		</div>

		<div class="right-box">
			<div class="courseZero_margin90"></div>

			<div id="right-box1">
				<input id="searchBox" type="text" placeholder="검색어를 입력해주세요">
				<button id="magBtn">
					<i class="fas fa-search"></i>
				</button>
			</div>

			<div id="right-box2">
				<button id="restaurantBtn">
					<i class="fas fa-utensils"></i> 맛집
				</button>
				<button id="spotBtn">
					<i class="fas fa-map-marker-alt"></i> 관광지
				</button>
				<input type="hidden" id="card-plus-btn">
			</div>

			<div id="right-box3">
				<div class="center sidebarPadding">
					<div class="sidebar-section-title">
						<b>맛집&관광지를 검색하세요</b>
					</div>
					<div
						style="color: rgb(170, 170, 170); margin-top: 10px; display: block;">
						<i class="fas fa-info-circle"></i> <br> <span
							style="font-size: 7px;">장소명을 검색하세요.<br>검색어는 두 글자 이상
							입력해주세요.
						</span>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=115edfd07bd1f09ac3a8881810a2bb4b"></script>

 <script src="<c:url value="/resources/js/courseJS/courseMap.js"/>"></script>
 <script src="<c:url value="/resources/js/courseJS/draggable.js"/>"></script>
 <script src="<c:url value="/resources/js/courseJS/mapBtn.js"/>"></script>
 <script src="<c:url value="/resources/js/courseJS/cardList.js"/>"></script>
 <script src="<c:url value="/resources/js/courseJS/createCard.js"/>"></script>
 <script src="<c:url value="/resources/js/courseJS/cardAddAndDelete.js"/>"></script>
 <script src="<c:url value="/resources/js/courseJS/search.js"/>"></script>
 <script src="<c:url value="/resources/js/courseJS/weather.js"/>"></script>
</body>
</html>