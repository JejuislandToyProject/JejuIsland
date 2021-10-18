<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kr">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Jeju Island</title>
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/6e314f7ee2.js" crossorigin="anonymous"></script>
        <!-- Simple line icons-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<c:url value="/resources/css/styles.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/css모달.css"/>" rel="stylesheet">
        
        
    </head>
    <body id="page-top"> 
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 navbar-shrink" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">🍊Travel Jeju🍊</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#page-top">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#reservation">Reservation</a></li>
                        <li class="nav-item"><a class="nav-link" href="#bestpick">Best Pick</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Board</a></li>
                        <li class="nav-item"><a class="nav-link" href="./login.html">Login</a></li>
                    </ul>
                    
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="masthead d-flex align-items-center">
            <div class="container px-4 px-lg-5 text-center">
                <h1 class="mb-1">Travel Jeju</h1>
                
                <img src="" alt="">
                <h3 class="mb-5"><em><span style="color: whitesmoke;">Start Jeju Island Travel Plan</span></em></h3>
                <a class="btn btn-success btn-xl" type="reset" value="Reset"href="#about">Find Out More</a>
            </div>
        </header>
        <!-- About-->
        <section class="content-section bg-light" id="about">
            <div class="container px-4 px-lg-5 text-center">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-10">
                        <h2>제주도 여행으로의 한걸음 설레는 마음으로 계획을 세워보세요!</h2>
                        <p class="lead mb-5">
                            Make a plan with excitement for your trip to Jeju Island!
                        </p>
                        <a class="btn btn-dark btn-xl" href="#services">Make a Plan</a>
                    </div>
                </div>
            </div>
        </section>
        <div id = "fixed" class="btn-open-popup">
            
                <i class="far fa-question-circle "></i>
            
        </div>
     
                
        <!-- Services-->
        <section class="content-section bg-primary text-white text-center" id="services">
            <div class="container px-4 px-lg-5">
                <div class="content-section-heading">
                    <h3 class="text-secondary mb-0">Search</h3>
                    <h2 class="mb-5">Travel Course</h2>
                </div>
                <div class="row gx-4 gx-lg-5">
                    <p>검색창 넣기</p>
       
                </div>
            </div>

            <div class="container px-5">
                <div class="row gx-5 align-items-center justify-content-center">
                    <div class="col-lg-8 col-xl-7 col-xxl-6">
                        <p>코스상세설명</p>
                    </div>
                    <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5" src="./assets/img/여행코스.png" alt="..."></div>
                </div>
            </div>
        </section>
        <!-- Callout-->
        <!-- <section class="callout">
            <div class="container px-4 px-lg-5 text-center">
                <h2 class="mx-auto mb-5">
                    Welcome to
                    <em>your</em>
                    next website!
                </h2>
                <a class="btn btn-primary btn-xl" href="https://startbootstrap.com/theme/stylish-portfolio/">Download Now!</a>
            </div>
        </section> -->
        <section class="showcase">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('assets/img/제주도 나눈사진.png')"></div>
                    <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                        <h2>행정구역별 맛집 찾기</h2>
                        <p class="lead mb-0">세분화된 맛집 로드뷰를 바탕으로 맛집투어를 기획해보세요!<br>신빙성 있는 자료를 위해 정회원 이상만 등록 가능합니다
                        <br><a href="">정회원 등록하러 가기!</a></p>
                    </div>
                </div>
                <div class="row g-0">
                    <div class="col-md-8 mx-auto">
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="https://demos.creative-tim.com/argon-dashboard-pro/assets/img/theme/img-1-1200x1000.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://demos.creative-tim.com/argon-dashboard-pro/assets/img/theme/img-1-1200x1000.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://demos.creative-tim.com/argon-dashboard-pro/assets/img/theme/img-1-1200x1000.jpg" alt="Third slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
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
                        <a class="portfolio-item" href="https://www.skyscanner.co.kr/flights-to/kr/cheap-flights-to-south-korea.html?ksh_id=_k_Cj0KCQjw-NaJBhDsARIsAAja6dMPZxDIhKEoINh2V67RIZBRiItrfsQG5MbkrfrP_0HXaczpAe6pBeIaAihSEALw_wcB_k_&associateID=SEM_GGF_00065_00022&utm_source=google&utm_medium=cpc&utm_campaign=KR-Flights-Search-KO-DSA&utm_term=&kpid=google_10774954531_105389890999_454813472768_dsa-459660535581_c_&gclid=Cj0KCQjw-NaJBhDsARIsAAja6dMPZxDIhKEoINh2V67RIZBRiItrfsQG5MbkrfrP_0HXaczpAe6pBeIaAihSEALw_wcB">
                            <div class="caption">
                                <div class="caption-content">
                                    <div class="h2">Airplane</div>
                                    <p class="mb-0"><span style="font-weight: bold; color:white">
                                        최저가 항공권 예매하러 가기!
                                    </span></p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/airplane1.png" alt="..." />
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="https://www.hotelscombined.co.kr/horizon/sem/hotels/general?lang=ko&skipapp=true&destination=c79699&kw=-1&gclid=Cj0KCQjw-NaJBhDsARIsAAja6dP0qr9OJoCgAW-rDKBbMy9Ug_z_cQH9RHnpyjfAwWtuAJ3cOAalP3oaAsRZEALw_wcB">
                            <div class="caption">
                                <div class="caption-content">
                                    <div class="h2">Accommodation</div>
                                    <p class="mb-0"><span style="font-weight: bold; color:white">
                                        숙박시설 한번에 비교하여 최고의 예약을!
                                    </span></p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/hotel.png" alt="..." />
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="https://www.jejupassrent.com/home/main/main.do">
                            <div class="caption">
                                <div class="caption-content">
                                    <div class="h2">Rental cars</div>
                                    <p class="mb-0"><span style="font-weight: bold; color:white">
                                        제주도 렌트카 실시간 가격비교
                                    </span></p>
                                </div>
                            </div>
                            
                            <img class="img-fluid" src="assets/img/car.png" alt="..." />
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="#!">
                            <div class="caption">
                                <div class="caption-content">
                                    <div class="h2">A Tourist attraction</div>
                                    <p class="mb-0"><span style="font-weight: bold; color:white">
                                        제주도 관광명소&맛집 한번에 알아보기
                                    </span></p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/관광지.png" alt="..." />
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Call to Action-->
        <section id="bestpick">
            <h2 style="text-align: center;"><i class="fas fa-crown" style="color: gold;"></i>이번 달 Best Pick</h2>
            <br><br>
            <div class="best-img1">
                <section class="contents project-card">
                    <section class="project-thumbnail1" id="project-macbook"></section>
                    <section class="project-explain">
                        <p><i class="fas fa-utensils" style="color: hotpink;"></i>이번 달 맛집 : 우진해장국 </p>
                        <p style="font-weight: bold;">loaction : 제주특별자치도 제주시 특별자치도 삼도2동 831</p>
                        
                    </section>
                </section>
            </div>
            
            <div class="best-img2">
                <section class="contents project-card">
                    <section class="project-thumbnail" id="project-macbook"></section>
                    <section class="project-explain">
                      <p><i class="fas fa-plane-departure" style="color: green;"></i>이번 달 관광지 : 빛의 벙커</p>
                      <p style="font-weight: bold;">loaction : 제주특별자치도 서귀포시 특별자치도 성산읍 고성리 2039-22</p>
                    </section>
                </section>
            </div>
        </section>

        <div class="modal" >
        
            <div class="modal_body"> <!--style="display: none;" 밑에 슬라이더 컨테이너에 넣어주면됨-->
                <button id="closs_btn" class="modal_closs_btn"><i class="fas fa-times"></i></button>
                <div class="slider_container"> <!-- #00c73c -->
                <span style="color: orange;">Q &nbsp;</span>제주도 관련 퀴즈
    
                <ul class="slider_list" style="width: auto; height: auto; overflow: visible;">
    
                    <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                    class="mySlides" onclick="currentSlide(1)">
                    <div class="quiz_page" style="color: black;">          
                    <span >
                        Quiz
                        <em>1</em>
                        </span>
                        / 
                        <span>20</span>
                    </span>
                    </div>
                <div class="quiz_rolling_group">
                    <div class="quiz_rolling ">
                        
                        <div class="quiz_ask">
                            다음 <a style="color: orange;">'천천히 보세요'</a>를 뜻하는<br>
                             제주도 사투리를 맞춰보세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="a1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons">
                                    looks_one
                                    </span>
                                    <span class="text_select "></span>
                                    <span>혼저 옵서</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="a2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>놀멍 놀멍 봅서</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="a3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>도르멍 옵서</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="a4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>솔짝 솔짝 옵서게</span>
                            </button>
                     </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(2)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>2</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            다음 <a style="color: orange;">'뭐해?'</a>를 뜻하는<br>
                             제주도 사투리를 맞춰보세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="b1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>어드레 감디?</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="b2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>왕 방 갑서</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="b3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>뭐하멘</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="b4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>어떵 갑니까?</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(3)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>3</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            다음 <a style="color: orange;">'은하수'</a>를 뜻하는<br>
                             제주도 사투리를 맞춰보세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="c1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>미리내</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="c2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>가개비</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="c3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>생이</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="c4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>지실</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(4)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>4</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            다음 <a style="color: orange;">'고구마'</a>를 뜻하는<br>
                             제주도 사투리를 맞춰보세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="d1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>감저</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="d2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>지실</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="d3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>고슴</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="d4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>탈</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(5)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>5</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            다음 <a style="color: orange;">'어서오세요'</a>를 뜻하는<br>
                             제주도 사투리를 맞춰보세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="e1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>강옵서</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="e2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>쉬명갑서</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="e3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>하명봅서</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="e4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>혼저옵서예</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(6)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>6</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            다음 제주<a style="color: orange;">'마스코트 캐릭터'</a>의 <br>
                             이름을 맞춰보세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="f1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>곰이&범이</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="f2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>해치</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="f3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>돌이&소리</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="f4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>뷰비</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(7)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>7</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            제주도에는<a style="color: orange;">'세계 자연유산'</a>으로 <br>지정된 곳이 존재합니다.
                             빈칸에 들어갈 알맞은 단어를 골라주세요 <br>
                             제주 [  ]과 용암 동굴
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="g1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>천제연폭포</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="g2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>화산섬</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="g3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>성산일출봉</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="g4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>감귤</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(8)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>8</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            다음 제주도의<a style="color: orange;">'수도'</a>를 선택해주세요<br>
                                (해당 보기에 답이없을시 선택 X)
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="h1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>제주시</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="h2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>서귀포시</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="h3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>서울</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="h4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>안덕면</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(9)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>9</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                           제주도의 유명 관광지중 <a style="color: orange;">'좁고 곶은땅'</a><br>
                           이라는 뜻을 가진 장소를 맞춰보세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="i1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>섭지코지</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="i2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>비양도</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="i3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>마라도</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="i4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>우도</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(10)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>10</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            제주도의 <a style="color: orange;">'옛 이름'</a>을<br>
                             맞춰보세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="j1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>동래</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="j2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>해도</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="j3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>원양도</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="j4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>탐라</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(11)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>11</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            제주도의 <a style="color: orange;">'7대 특산물'</a>에 해당하는<br>
                             어류를 골라주세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="k1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>삼치</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="k2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>갈치</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="k3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>조기</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="k4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>참치</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(12)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>12</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            제주도 <a style="color: orange;">'10대 상징물'</a>에 해당하는<br>
                             상징물을 선택해주세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="l1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>남한산성</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="l2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>백두산</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="l3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>해녀</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="l4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>말</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(13)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>13</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            제주도의 <a style="color: orange;">'행정구역'</a>에 <br>
                             포함되지 않는곳을 골라주세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="m1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>애월읍</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="m2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>서귀포시</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="m3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>정읍</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="m4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>대정읍</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(14)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>14</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            제주도의 <a style="color: orange;">'탄생 신화'</a>에 존재하는<br>
                             제주도를 만든 거대한 여신의 이름을 맞춰주세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="n1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>설문대할망</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="n2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>아프로디테</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="n3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>삼신할매</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="n4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>망태할아범</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(15)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>15</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            3,500년 전 얕은 바다를 뚫고 올라온 화산체<br>
                            중 제주의 서남쪽 해안에 위치하며 절경을<br> 
                            이루고 있는 이 곳은
                            어디일까요?
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="o1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>성산일출봉</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="o2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>만장굴</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="o3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>송악산</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="o4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>백록담</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(16)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>16</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            제주도에 존재하는 <a style="color: orange;">'올래길'</a>의 코스가<br>
                            몇개의 코스인지 맞춰주세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="p1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>17</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="p2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>20</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="p3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>21</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="p4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>23</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(17)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>17</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            제주도에는 <a style="color: orange;">'유인도와 무인도'</a>가<br> 
                            존재합니다 다음중 유인도에 해당하는것을<br> 
                            골라주세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="q1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>차귀도</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="q2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>형제섬</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="q3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>숲섬</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="q4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>가파도</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(18)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>18</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            제주도에 옛부터 내려오는 <a style="color: orange;">'정통 귀신'</a><br>
                            이 있습니다 귀신의 이름을 맞춰주세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="r1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>그슨대</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="r2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>처녀귀신</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="r3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>그슨새</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="r4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>팔척귀신</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(19)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>19</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                            도둑과 거지와 대문이 없는 섬 이라는<br>
                            뜻으로, 제주도를 달리 이르는 말은?
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="s1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>정상도</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="s2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>진도</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="s3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>삼무도</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="s4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>참도</span>
                            </button>
                        </div>
                    </li>
                        <li style="float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                         class="mySlides" onclick="currentSlide(20)">
                         <div class="quiz_page" style="color: black;">          
                            <span >
                                Quiz
                                <em>20</em>
                                </span>
                                / 
                                <span>20</span>
                            </span>
                            </div>
                            <div class="quiz_rolling_group">
                                <div class="quiz_rolling ">
                        <div class="quiz_ask">
                           제주도에는 동양에서 가장 큰<br>
                           <a style="color: orange;">'동백수목원'</a>이 존재합니다<br>
                           이름을 맞춰주세요
                        </div>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="t1" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_one
                                    </span>
                                    <span class="text_select"></span>
                                    <span>로즈힐</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="t2" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_two
                                    </span>
                                    <span class="text_select"></span>
                                     <span>카멜리아힐</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="t3" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_3
                                    </span>
                                    <span class="text_select"></span>
                                     <span>샤론힐</span>
                            </button>
                        <div class="quiz_select">
                            <button type="button" name="button" class="select_positive" id="t4" onclick="reply_click(this.id), color_click(this.id)">
                                <span class="material-icons" >
                                    looks_4
                                    </span>
                                    <span class="text_select"></span>
                                     <span>어제일리어힐</span>
                            </button>
                        </div>
                        <button id="clrear" style="margin-top: 70px;" onclick="answer_path(this.id)">정답 제출!</button>
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
                <li id="on" style="margin: 48px; float: none;position: absolute;top: 0px;width: 400px;left: 0px;transition: none 0s ease 0s;transform: translate3d(0px, 0px, 0px);"
                     class="mySlides" onclick="currentSlide(21)">
                    
                        <div class="quiz_rolling_group">
                            <div class="quiz_rolling ">
                    <div style="font-size: 50px;">
                      <a style="color: rgb(255, 136, 0);">점수 확인</a>
                    </div>
                    <div class="clrear_select"></div>
                   <div id="score_check" style="color: orange;">0</div>
                    
                   <div id="ment">즐거운 제주도, 행복한 제주도</div>
                    
                    <div class="clrear_select"></div>
                    <button id="answer">정답 보러가기</button>
                    <button id="adios" onclick="quiz_close()">닫기</button>
                </li>         
                </div>
            </div>
            </div>
          </div>
          
        
          
          
        <!-- Footer-->
        <footer class="footer text-center">
            <div class="container px-4 px-lg-5">
                <!-- <ul class="list-inline mb-5">
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-facebook"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-twitter"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white" href="#!"><i class="icon-social-github"></i></a>
                    </li>
                </ul> -->
                <div class="logoimg">
                    <!-- <img src="./assets/img/최종팀플 제주도 로고.png" alt=""> -->
                </div>
                <p class="text-muted small mb-0">Jeju Island</p>
            </div>
        </footer>
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top"><i class="fas fa-angle-up"></i></a>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        
    </body>
    
    <script src="<c:url value="/resources/js/scripts.js"/>"></script>
    <script src="<c:url value="/resources/js/js모달.js"/>"></script>
</html>
