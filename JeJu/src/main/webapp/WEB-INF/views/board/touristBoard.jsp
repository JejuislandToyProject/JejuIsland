<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TouristBorder</title>

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- Simple line icons-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<c:url value='/resources/css/styles.css'/>" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/cssmodal.css'/>">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Border CSS-->

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/border.css' />">
	
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
					<li class="nav-item"><a class="nav-link" href="/jeju">Home</a></li>

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
								href="<c:url value="../login"/>">Login</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
    
    <div class="bg-image"></div>

    <!-- body -->
    <div id="body"></div>
    <!-- About-->
    <section class="content-section bg-text" id="about">
      <div class="container px-4 px-lg-5 text-center">
          <div class="row gx-4 gx-lg-5 justify-content-center">
              <div class="col-lg-10">
                  <h2>관광지 명소</h2>
                  <p class="lead mb-5 mt-2">
                  
                    제주도의 유명한 명소 
               
                    소개합니다
                  </p>
              </div>
          </div>
      </div>
  </section>
  
    <!-- border top navigation -->
  <!-- 기능 만들어야 함-->
  <div class="card shadow-sm rounded-3">
  <div class="nav-wrapper position-relative end-0">
    <ul class="nav nav-pills nav-fill p-1" role="tablist" id="nav-top">
      <li class="nav-item">
         <a class="nav-link" href="<c:url value="/board/tourist"/>">관광지 명소</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<c:url value="/board/restaurant"/>">맛집 정보</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="/jeju/travelCourse/course">여행 코스</a>
        </li>
       
    </ul>
  </div>
</div>
	  
      <!-- card layout -->
      <div id="contents-body">
      </div>
      
            <!-- writing navbar -->
      <!-- Navbar Transparent -->
	<nav
	  class="navbar navbar-expand-sm top-0 z-index-3 w-100 shadow-none my-3  navbar-transparent ">
	  <div class="container">
	    <div class="collapse navbar-collapse" id="navigation">
	      <ul class="navbar-nav navbar-nav-hover ms-auto">
	        <div class="row">
	          <div class="col-auto">
	            <div class="bg-white border-radius-lg d-flex me-2">
	              <input id="searchValue" type="text" class="form-control ps-6" placeholder="Type here...">
	              <button id="searchBtn" class="btn btn-outline-dark ms-1">Search</button>
	            </div>
	            
	              <div class="me-3">
				     <button href="#" onclick="addTourist()" class="btn btn-outline-info float-end me-5 mt-2"> 글쓰기</button>

				      <script type="text/javascript">
				      function addTourist(){
				          var uid="<%=(String)session.getAttribute("id") %>";
				          
				          if(uid=="null"){
				        	  alert("로그인이 팔요한 항목입니다.")
				          }else{
				        	  location.replace("/jeju/addTourist");
				          }
				      }
				      </script>
			      </div>
	          </div>
	        </div>
	      </ul>
	    </div>
	  </div>
	</nav>
	<!-- End Navbar -->
      
      
      <!--Page-->
      <nav aria-label="Page navigation">
        <ul id="pagination" class="pagination justify-content-center">
          
        </ul>
      </nav>
    
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container px-4 px-lg-5">
			<p class="text-muted small">Copyright © Jeju Website 2021</p>
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

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="<c:url value="/resources/js/jquery.twbsPagination.min.js"/>"></script>
  	<script src="<c:url value="/resources/js/touristBoard.js"/>"></script>

</html>