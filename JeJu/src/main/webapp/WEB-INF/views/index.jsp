<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kr">
<head>

<title>Travel Jeju</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<c:url value="/resources/css/styles.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/cssmodal.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">

<!-- polygon css -->
<link rel="stylesheet" href="<c:url value="/resources/css/Area.css"/>">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://kit.fontawesome.com/cc0398a704.js" crossorigin="anonymous"></script>
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg navbar-light fixed-top py-3 navbar-shrink"
		id="mainNav">
		<div class="container px-4 px-lg-5">
			<h1 class="fs-4 fw-normal">
				<a class="navbar-brand" href="#page-top">TRAVEL JEJU</a>
			</h1>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link" href="#page-top">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#reservation">Reservation</a></li>
					<li class="nav-item"><a class="nav-link" href="#bestpick">BestPick</a></li>
					<li class="nav-item"><a class="nav-link" href="./board/tourist">Board</a></li>


					<c:choose>
						<c:when test="${sessionScope.id ne null}">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
									<i class="fa fa-user-circle fa-lg"></i>
							</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item"
										href="<c:url value="/mypage"/>"> <i
											class="fa fa-home fa-lg"></i> <font
											style="vertical-align: inherit;"> <font
												style="vertical-align: inherit;">Mypage</font>
										</font>
									</a></li>

									<li class="divider dropdown-divider"></li>

									<li><a class="dropdown-item"
										href="<c:url value="/logout"/>"> <i
											class="fas fa-power-off fa-lg"></i> <font
											style="vertical-align: inherit;"> <font
												style="vertical-align: inherit;">Logout</font>
										</font>
									</a></li>

								</ul></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link"
								href="<c:url value="/login"/>">Login</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Header-->
	<header class="masthead d-flex align-items-center"
		style="background-image: url(${main_info.image })">
		<div class="container px-4 px-lg-5 text-center">
			<h2 class="h1 mb-1">${main_info.title }</h2>


			<h3 class="mb-5">
				<em><span style="color: whitesmoke;">${main_info.sub_title }</span></em>
			</h3>
			<a class="btn btn-success btn-xl" type="reset" value="Reset"
				href="#about">Find Out More</a>
		</div>
	</header>
	<!-- About-->
	<section class="content-section bg-light" id="about">
		<div class="container px-4 px-lg-5 text-center">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-10">
					
					<h2 class="mb-2">?????? ???????????? ????????? ?????? ??????????</h2>
					<p class="lead mb-5">?????? ????????? ????????? ????????? ????????????!</p>
					<a class="btn-open-popup-sub btn btn-dark btn-xl ">JEJU Quiz</a>
				</div>
			</div>
		</div>
	</section>
	<div id="fixed" class="btn-open-popup">
		<i class="far fa-question-circle "></i>
	</div>


	<!-- Services-->
	<section class="content-section bg-primary text-white text-center"
		id="services">
		<div class="container px-4 px-lg-5">
			<div class="content-section-heading">
				<h3 class="text-secondary mb-0">Search</h3>
				<h2 class="mb-5">Travel Course</h2>
			</div>
		</div>

		<div class="container px-5">
			<div class="row gx-5 align-items-center justify-content-center">
				<div class="col-lg-8 col-xl-7 col-xxl-6 plan-image">
				</div>
				<div class="col-lg-6 order-lg-1 my-auto showcase-text">
					<h2 class="mb-3 plan-sub-title">Kakao Map?????? ?????? ??? ?????? ??????</h2>
					<p class="lead">
						????????? ??????????????? ????????? ????????? ???????????? ????????? ???????????????! <br>
						?????? ???????????? ?????? ????????? ???????????? ???????????? <br>
						????????? ?????? ????????? ????????? ??????????????????
					</p>
					<a class="btn plan-btn" href="<c:url value="travelCourse/course"/>">Make a Plan</a>
				</div>
			</div>
		</div>
		<div class="svg-water-animation">
			<svg class="water-background" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
			   width="100%" height="140px" viewBox="0 0 2000 120" enable-background="new 0 0 574.558 120" xml:space="preserve">
			  
			 <defs>
			    <pattern id="water" width=".25" height="1.1" patternContentUnits="objectBoundingBox">
			      <path fill="#fff" d="M0.25,1H0c0,0,0-0.659,0-0.916c0.083-0.303,0.158,0.334,0.25,0C0.25,0.327,0.25,1,0.25,1z"/>
			    </pattern>
			  </defs>
			  
			  <rect class="water-fill" fill="url(#water)" x="-400" y="0" width="3000" height="120"/>
			</svg>
		</div>
	</section>

	<section class="showcase">
		<div class="polygon-modal">
			<div class="polygon-modal-content">
				<div id="polygon-image-box"></div>

				<div class="polygon-text-box">

					<div class="polygon-text-title">
						<div id="polygon-title"></div>
						<div id="polygon-location"></div>
						<div class="polygon-zero_padding20"></div>
						<button class="polygon-btn-close">&times;</button>
					</div>
					<div id="polygon-text-desc"></div>
					<div class="polygon-icon-pasing">
						<i class="far fa-thumbs-up"></i> <i class="fas fa-bolt"></i> <i
							class="fas fa-globe-americas"></i>
					</div>

					<button id="polygon-modalBtn">????????????</button>

				</div>
			</div>
		</div>
		<div class="polygon-overlay"></div>
		<div class="container-fluid p-0 my-5">
			<div class="row g-0">

				<!-- ???????????? ??????????????? ??????. -->
				<div id="map"></div>

				<!-- ???????????? ??????????????? ??????. -->

				<div class="col-lg-6 order-lg-1 my-auto showcase-text">
					<h2>??????????????? ?????? ??????</h2>
					<p class="lead mb-0">
						???????????? ?????? ???????????? ???????????? ??????????????? ??????????????????!<br>????????? ?????? ????????? ?????? ????????? ????????? ??????
						???????????????
					</p>
					<div class="login-btn btn btn-success"><a href="<c:url value="/login"/>">????????? ???????????? ??????!</a></div>
				</div>
			</div>
		</div>

		<div class="row g-0" id="tourist-spot">
			<div class="col-md-8 mx-auto mt-4 mb-3">
				<h2 class="text-center my-3">????????? ?????? ?????? ??????</h2>
				<p class="text-center lead  mb-0">??? ?????? ????????? ??? ?????? ???????????? ????????????????????? ??????
					?????????!</p>
				<div id="myCarousel" class="carousel slide my-4"
					data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#myCarousel"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#myCarousel"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#myCarousel"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<c:forEach var="i" begin="0" end="${tourist_spot_size-1 }" step="4" varStatus="status">
							<c:choose>
								<c:when test="${status.first }">
									<div class="carousel-item active">
								</c:when>
								<c:otherwise>
									<div class="carousel-item">
								</c:otherwise>
							</c:choose>
									<div class="col-xs-3 col-sm-3 col-md-3" data-bs-interval="10000">
										<a href="<c:url value="board/listById?tourist_spot_id=${tourist_spot[i].tourist_spot_id }"/>">
											<img src="${tourist_spot[i].image }" />
										</a>
									</div>
									<div class="col-xs-3 col-sm-3 col-md-3">
										<a href="<c:url value="board/listById?tourist_spot_id=${tourist_spot[i + 1].tourist_spot_id }"/>">
											<img src="${tourist_spot[i + 1].image }" />
										</a>
									</div>
									<div class="col-xs-3 col-sm-3 col-md-3">
										<a href="<c:url value="board/listById?tourist_spot_id=${tourist_spot[i + 2].tourist_spot_id }"/>">
											<img src="${tourist_spot[i + 2].image }" />
										</a>
									</div>
									<div class="col-xs-3 col-sm-3 col-md-3">
										<a href="<c:url value="board/listById?tourist_spot_id=${tourist_spot[i + 3].tourist_spot_id }"/>">
											<img src="${tourist_spot[i + 3].image }" />
										</a>
									</div>
								</div>
						</c:forEach>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#myCarousel" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#myCarousel" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Portfolio-->
	<section class="content-section" id="reservation">
		<div class="container px-4 px-lg-5">
			<div class="content-section-heading text-center">
				<h3 class="text-secondary mb-0">make plan</h3>
				<h2 class="mb-5">A trip to Jeju Island</h2>
			</div>
			<div class="row gx-0">
				<div class="col-lg-6">
					<a class="portfolio-item"
						href="https://www.skyscanner.co.kr/flights-to/kr/cheap-flights-to-south-korea.html?ksh_id=_k_Cj0KCQjw-NaJBhDsARIsAAja6dMPZxDIhKEoINh2V67RIZBRiItrfsQG5MbkrfrP_0HXaczpAe6pBeIaAihSEALw_wcB_k_&associateID=SEM_GGF_00065_00022&utm_source=google&utm_medium=cpc&utm_campaign=KR-Flights-Search-KO-DSA&utm_term=&kpid=google_10774954531_105389890999_454813472768_dsa-459660535581_c_&gclid=Cj0KCQjw-NaJBhDsARIsAAja6dMPZxDIhKEoINh2V67RIZBRiItrfsQG5MbkrfrP_0HXaczpAe6pBeIaAihSEALw_wcB">
						<div class="caption">
							<div class="caption-content">
								<div class="h2">Airplane</div>
								<p class="mb-0">
									<span style="font-weight: bold; color: white"> ????????? ?????????
										???????????? ??????! </span>
								</p>
							</div>
						</div> <img class="img-fluid"
						src="<c:url value="resources/img/airplane1.png"/>" alt="airplane" />
					</a>
				</div>
				<div class="col-lg-6">
					<a class="portfolio-item"
						href="https://www.hotelscombined.co.kr/horizon/sem/hotels/general?lang=ko&skipapp=true&destination=c79699&kw=-1&gclid=Cj0KCQjw-NaJBhDsARIsAAja6dP0qr9OJoCgAW-rDKBbMy9Ug_z_cQH9RHnpyjfAwWtuAJ3cOAalP3oaAsRZEALw_wcB">
						<div class="caption">
							<div class="caption-content">
								<div class="h2">Accommodation</div>
								<p class="mb-0">
									<span style="font-weight: bold; color: white"> ???????????? ?????????
										???????????? ????????? ?????????! </span>
								</p>
							</div>
						</div> <img class="img-fluid"
						src="<c:url value="resources/img/hotel.png"/>" alt="hotel" />
					</a>
				</div>
				<div class="col-lg-6">
					<a class="portfolio-item"
						href="https://www.jejupassrent.com/home/main/main.do">
						<div class="caption">
							<div class="caption-content">
								<div class="h2">Rental cars</div>
								<p class="mb-0">
									<span style="font-weight: bold; color: white"> ????????? ?????????
										????????? ???????????? </span>
								</p>
							</div>
						</div> <img class="img-fluid"
						src="<c:url value="resources/img/car.png"/>" alt="rent car" />
					</a>
				</div>
				<div class="col-lg-6">
					<a class="portfolio-item" href="<c:url value="/board/restaurant"/>">
						<div class="caption">
							<div class="caption-content">
								<div class="h2">A Tourist attraction</div>
								<p class="mb-0">
									<span style="font-weight: bold; color: white"> ?????????
										????????????&?????? ????????? ???????????? </span>
								</p>
							</div>
						</div> <img class="img-fluid" src="<c:url value="resources/img/?????????.png"/>" alt="popular place" />
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Call to Action-->
	<section id="bestpick">
		<h2 style="text-align: center;">
			<i class="fas fa-crown" style="color: gold;"></i>Best Pick
		</h2>
		<br> <br>
		<div class="best-img1">
			<div class="contents project-card">
				<a href="<c:url value="/board/listFamous?famous_restaurant_id=${famous_restaurant[0].famous_restaurant_id}"/>">
					<div class="project-thumbnail1" id="project-macbook" style="background: no-repeat center/cover url(${famous_restaurant[0].image })"></div>
					<div class="project-explain">
						<p>
							<i class="fas fa-utensils" style="color: hotpink;"></i>${famous_restaurant[0].name }
						</p>
						<p style="font-weight: bold;">Hashtag: ${famous_restaurant[0].hashtag }</p>
	
					</div>
				</a>
			</div>
		</div>

		<div class="best-img2">
			<div class="contents project-card">
				<a href="<c:url value="/board/listById?tourist_spot_id=${tourist_spot[0].tourist_spot_id}"/>">
					<div class="project-thumbnail" id="project-macbook" style="background: no-repeat center/cover url(${tourist_spot[0].image })"></div>
					<div class="project-explain">
						<p>
							<i class="fas fa-plane-departure" style="color: green;"></i>${tourist_spot[0].name }
						</p>
						<p style="font-weight: bold;">Hashtag : ${tourist_spot[0].hashtag }</p>
					</div>
				</a>
			</div>
		</div>
	</section>

	<div class="modal">

		<div class="modal_body">
			<button id="closs_btn" class="modal_closs_btn">
				<i class="fas fa-times"></i>
			</button>
			<div class="slider_container">
				<!-- #00c73c -->
				<span style="color: orange;">Q &nbsp;</span>????????? ?????? ??????

				<ul class="slider_list" >

					<li class="mySlides" onclick="currentSlide(1)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>1</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">

								<div class="quiz_ask">
									?????? <a style="color: orange;">'????????? ?????????'</a>??? ?????????<br> ?????????
									???????????? ???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="a1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select "></span> <span>?????? ??????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="a2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>?????? ?????? ??????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="a3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>????????? ??????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="a4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>?????? ?????? ?????????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(2)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>2</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									?????? <a style="color: orange;">'???????'</a>??? ?????????<br> ????????? ????????????
									???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="b1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>????????? ???????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="b2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>??? ??? ??????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="b3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>?????????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="b4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>?????? ??????????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(3)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>3</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									?????? <a style="color: orange;">'?????????'</a>??? ?????????<br> ????????? ????????????
									???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="c1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>?????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="c2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>?????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="c3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>??????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="c4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>??????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(4)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>4</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									?????? <a style="color: orange;">'?????????'</a>??? ?????????<br> ????????? ????????????
									???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="d1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>??????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="d2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>??????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="d3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>??????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="d4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>???</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(5)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>5</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									?????? <a style="color: orange;">'???????????????'</a>??? ?????????<br> ????????? ????????????
									???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="e1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>?????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="e2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>????????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="e3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>????????????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="e4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>???????????????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(6)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>6</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									?????? ??????<a style="color: orange;">'???????????? ?????????'</a>??? <br> ?????????
									???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="f1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>??????&??????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="f2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>??????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="f3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>??????&??????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="f4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>??????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(7)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>7</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									???????????????<a style="color: orange;">'?????? ????????????'</a>?????? <br>????????? ??????
									???????????????. ????????? ????????? ????????? ????????? ??????????????? <br> ?????? [ ]??? ?????? ??????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="g1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>???????????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="g2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>?????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="g3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>???????????????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="g4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>??????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(8)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>8</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									?????? ????????????<a style="color: orange;">'??????'</a>??? ??????????????????<br> (??????
									????????? ??????????????? ?????? X)
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="h1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>?????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="h2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>????????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="h3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>??????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="h4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>?????????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(9)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>9</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									???????????? ?????? ???????????? <a style="color: orange;">'?????? ?????????'</a><br>
									????????? ?????? ?????? ????????? ???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="i1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>????????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="i2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>?????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="i3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>?????????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="i4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>??????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(10)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>10</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									???????????? <a style="color: orange;">'??? ??????'</a>???<br> ???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="j1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>??????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="j2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>??????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="j3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>?????????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="j4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>??????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(11)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>11</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									???????????? <a style="color: orange;">'7??? ?????????'</a>??? ????????????<br> ?????????
									???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="k1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>??????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="k2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>??????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="k3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>??????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="k4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>??????</span>
												</button>
											</div>
					</li>
					<li style="float: none; position: absolute; top: 0px; width: 400px; left: 0px; transition: none 0s ease 0s; transform: translate3d(0px, 0px, 0px);"
						class="mySlides" onclick="currentSlide(12)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>12</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									????????? <a style="color: orange;">'10??? ?????????'</a>??? ????????????<br> ????????????
									??????????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="l1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>????????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="l2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>?????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="l3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>??????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="l4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>???</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(13)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>13</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									???????????? <a style="color: orange;">'????????????'</a>??? <br> ???????????? ????????????
									???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="m1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>?????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="m2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>????????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="m3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>??????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="m4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>?????????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(14)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>14</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									???????????? <a style="color: orange;">'?????? ??????'</a>??? ????????????<br> ????????????
									?????? ????????? ????????? ????????? ???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="n1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>???????????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="n2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>???????????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="n3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>????????????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="n4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>???????????????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(15)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>15</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									3,500??? ??? ?????? ????????? ?????? ????????? ?????????<br> ??? ????????? ????????? ????????? ???????????? ?????????<br>
									????????? ?????? ??? ?????? ????????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="o1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>???????????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="o2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>?????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="o3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>?????????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="o4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>?????????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(16)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>16</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									???????????? ???????????? <a style="color: orange;">'?????????'</a>??? ?????????<br> ?????????
									???????????? ???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="p1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>17</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="p2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>20</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="p3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>21</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="p4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>23</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(17)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>17</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									??????????????? <a style="color: orange;">'???????????? ?????????'</a>???<br> ???????????????
									????????? ???????????? ??????????????????<br> ???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="q1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>?????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="q2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>?????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="q3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>??????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="q4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>?????????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(18)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>18</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									???????????? ????????? ???????????? <a style="color: orange;">'?????? ??????'</a><br> ???
									???????????? ????????? ????????? ???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="r1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>?????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="r2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>????????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="r3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>?????????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="r4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>????????????</span>
												</button>
											</div>
					</li>
					<li class="mySlides" onclick="currentSlide(19)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>19</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									????????? ????????? ????????? ?????? ??? ?????????<br> ?????????, ???????????? ?????? ????????? ???????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="s1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>?????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="s2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>??????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="s3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>?????????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="s4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>??????</span>
												</button>
											</div>
					</li>
					<li
						style="float: none; position: absolute; top: 0px; width: 400px; left: 0px; transition: none 0s ease 0s; transform: translate3d(0px, 0px, 0px);"
						class="mySlides" onclick="currentSlide(20)">
						<div class="quiz_page" style="color: black;">
							<span> Quiz <em>20</em>
							</span> / <span>20</span> </span>
						</div>
						<div class="quiz_rolling_group">
							<div class="quiz_rolling ">
								<div class="quiz_ask">
									??????????????? ???????????? ?????? ???<br> <a style="color: orange;">'???????????????'</a>???
									???????????????<br> ????????? ???????????????
								</div>
								<div class="quiz_select">
									<button type="button" name="button" class="select_positive"
										id="t1" onclick="reply_click(this.id), color_click(this.id)">
										<span class="material-icons"> looks_one </span> <span
											class="text_select"></span> <span>?????????</span>
									</button>
									<div class="quiz_select">
										<button type="button" name="button" class="select_positive"
											id="t2" onclick="reply_click(this.id), color_click(this.id)">
											<span class="material-icons"> looks_two </span> <span
												class="text_select"></span> <span>???????????????</span>
										</button>
										<div class="quiz_select">
											<button type="button" name="button" class="select_positive"
												id="t3" onclick="reply_click(this.id), color_click(this.id)">
												<span class="material-icons"> looks_3 </span> <span
													class="text_select"></span> <span>?????????</span>
											</button>
											<div class="quiz_select">
												<button type="button" name="button" class="select_positive"
													id="t4"
													onclick="reply_click(this.id), color_click(this.id)">
													<span class="material-icons"> looks_4 </span> <span
														class="text_select"></span> <span>??????????????????</span>
												</button>
											</div>
											<button id="clrear" style="margin-top: 70px;"
												onclick="answer_path(this.id)">?????? ??????!</button>
					</li>
					<div class="quiz_prev_and_next">
						<div class="quiz_select">
							<div class="quiz_select">
								<button type="button" name="button" class="ico_arrow btn_prev"
									onclick="plusSlides(-1)">
									<span class="material-icons">arrow_back_ios</span>
								</button>

								<button type="button" name="button" class="ico_arrow btn_next"
									onclick="plusSlides(1)">
									<span class="material-icons">arrow_forward_ios</span>

								</button>
							</div>
				</ul>
			</div>
			<li id="on" class="mySlides" onclick="currentSlide(21)">

				<div class="quiz_rolling_group">
					<div class="quiz_rolling ">
						<div style="font-size: 50px;">
							<a style="color: rgb(255, 136, 0);">?????? ??????</a>
						</div>
						<div class="clrear_select"></div>
						<div id="score_check" style="color: orange;">0</div>

						<div id="ment">????????? ?????????, ????????? ?????????</div>

						<div class="clrear_select"></div>
						<button style="margin-left: 12px;" id="adios" onclick="quiz_close()">??????</button>
					</div>
				</div>
			</li>
		</div>
	</div>
	</div>
	</div>




	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container px-4 px-lg-5">
			<p class="text-muted small">Copyright ?? Jeju Website 2021</p>
		</div>
	</footer>
	
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"><i
		class="fas fa-angle-up"></i></a>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->

</body>

<script src="<c:url value="/resources/js/scripts.js"/>"></script>
<script src="<c:url value="/resources/js/js??????.js"/>"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=115edfd07bd1f09ac3a8881810a2bb4b"></script>
<script src="<c:url value="/resources/js/polygon.js"/>"></script>
</html>
