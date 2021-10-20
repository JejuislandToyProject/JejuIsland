<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CardBorder</title>

    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Simple line icons-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<c:url value='/resources/css/styles.css'/>" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/cssmodal.css'/>">
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
        rel="stylesheet">
       
    <!-- Border CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/border.css' />">
    
    <!--  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
	
</head>
<body>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 navbar-shrink" id="mainNav">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="#page-top">🍊Travel Jeju🍊</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto my-2 my-lg-0">
                    <li class="nav-item"><a class="nav-link" href="#index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="#reservation">Reservation</a></li>
                    <li class="nav-item"><a class="nav-link" href="#bestpick">Best Pick</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Board</a></li>
                    <li class="nav-item"><a class="nav-link" href="./login.html">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <!-- border top navigation -->
    <!--<div>
      <ul>
        <li>맛집 정보</li>
        <li>관광지 명소</li>
        <li>게스트 하우스</li>
        <li>제주도 여행 코스</li>
        <li>제주도 새 소식</li>
      </ul>
    </div>-->
    
    <!-- body -->
    <div id="body">
    <!-- About-->
    <section class="content-section bg-light" id="about">
      <div class="container px-4 px-lg-5 text-center">
          <div class="row gx-4 gx-lg-5 justify-content-center">
              <div class="col-lg-10">
                  <h2>관광지 명소</h2>
                  <p class="lead mb-5 mt-2">
                  
                    제주도의 유명한 명소 
                    <c:forEach items="${tourist_spot }" var="tourist" varStatus="i" />
                    ${tourist.location}<br>
                    소개합니다
                  </p>
              </div>
          </div>
      </div>
  </section>
      
      <!-- card layout -->
      <c:forEach var ="tourist" items="${tourist_spot }">
      <div id="card-body">
        <div class="card-group">
          <!--card no.01-->
          <div class="card shadow-sm rounded-3">
            <div class="card-header p-0 mx-3 mt-3 position-relative z-index-1">
              <a href="javascript:;" class="d-block">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBtUtdChvj-FUfBPR4j2DBj0z5XNkSkkLKmg&usqp=CAU" class="img-fluid border-radius-lg">
              </a>
            </div>
        
            <div class="card-body pt-2">
              <a href="javascript:;" class="card-title h5 d-block text-darker text-center mt-3"
              id="card-title">
                ${tourist.name }
              </a>
              <p class="card-description text-center mb-4">
                <small class="text-muted">${tourist.description }</small>
              </p>
            </div>
            <!-- 아이콘 기능 만들어야 함-->
            <div class="author align-items-center">
              <div class="mt-6" id="icon">
                <i id="icon" onclick="changeThumbs()" class="far fa-thumbs-up"></i>
                <i class="far fa-thumbs-down"></i>
              </div>
              <div class="mt-2" id="icon">
                <p>좋아요</p>
                <p>싫어요</p>
              </div>
            </div>
          </div>
		</div>
      </div>
        </c:forEach>
      <!--Page 버튼 수정해야함-->
      <nav>
        <ul class="pagination justify-content-center">
          <li class="page-item">
            <a class="page-link" href="javascript:;" aria-label="Previous">
              <i class="fa fa-angle-left"></i>
              <span class="sr-only">Previous</span>
            </a>
          </li>
          <li class="page-item"><a class="page-link" href="javascript:;">1</a></li>
          <li class="page-item"><a class="page-link" href="javascript:;">2</a></li>
          <li class="page-item"><a class="page-link" href="javascript:;">3</a></li>
          <li class="page-item"><a class="page-link" href="javascript:;">4</a></li>
          <li class="page-item"><a class="page-link" href="javascript:;">5</a></li>
          <li class="page-item">
            <a class="page-link" href="javascript:;" aria-label="Next">
              <i class="fa fa-angle-right"></i>
              <span class="sr-only">Next</span>
            </a>
          </li>
        </ul>
      </nav>
      <a href='<c:url value='/board/form'/>' role="button" class="btn btn-outline-info">글쓰기</a>

    <!-- Footer 부분 수정해야함-->
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

 
</body>
</html>