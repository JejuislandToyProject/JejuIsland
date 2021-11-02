
 	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
<title>${famous_restraurant.title }</title>
</head>
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
					<li class="nav-item"><a class="nav-link" href="./tourist">Board</a></li>


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
	 <!--header-->
    <div class="container pt-5 ps-0">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5 mt-4">
          <li class="breadcrumb-item text-sm">
            <a class="opacity-3 text-dark" href="javascript:;">
              <svg width="12px" height="12px" class="mb-1" viewBox="0 0 45 40" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>shop </title>
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-1716.000000, -439.000000)" fill="#252f40" fill-rule="nonzero">
                    <g transform="translate(1716.000000, 291.000000)">
                      <g transform="translate(0.000000, 148.000000)">
                        <path d="M46.7199583,10.7414583 L40.8449583,0.949791667 C40.4909749,0.360605034 39.8540131,0 39.1666667,0 L7.83333333,0 C7.1459869,0 6.50902508,0.360605034 6.15504167,0.949791667 L0.280041667,10.7414583 C0.0969176761,11.0460037 -1.23209662e-05,11.3946378 -1.23209662e-05,11.75 C-0.00758042603,16.0663731 3.48367543,19.5725301 7.80004167,19.5833333 L7.81570833,19.5833333 C9.75003686,19.5882688 11.6168794,18.8726691 13.0522917,17.5760417 C16.0171492,20.2556967 20.5292675,20.2556967 23.494125,17.5760417 C26.4604562,20.2616016 30.9794188,20.2616016 33.94575,17.5760417 C36.2421905,19.6477597 39.5441143,20.1708521 42.3684437,18.9103691 C45.1927731,17.649886 47.0084685,14.8428276 47.0000295,11.75 C47.0000295,11.3946378 46.9030823,11.0460037 46.7199583,10.7414583 Z"></path>
                        <path d="M39.198,22.4912623 C37.3776246,22.4928106 35.5817531,22.0149171 33.951625,21.0951667 L33.92225,21.1107282 C31.1430221,22.6838032 27.9255001,22.9318916 24.9844167,21.7998837 C24.4750389,21.605469 23.9777983,21.3722567 23.4960833,21.1018359 L23.4745417,21.1129513 C20.6961809,22.6871153 17.4786145,22.9344611 14.5386667,21.7998837 C14.029926,21.6054643 13.533337,21.3722507 13.0522917,21.1018359 C11.4250962,22.0190609 9.63246555,22.4947009 7.81570833,22.4912623 C7.16510551,22.4842162 6.51607673,22.4173045 5.875,22.2911849 L5.875,44.7220845 C5.875,45.9498589 6.7517757,46.9451667 7.83333333,46.9451667 L19.5833333,46.9451667 L19.5833333,33.6066734 L27.4166667,33.6066734 L27.4166667,46.9451667 L39.1666667,46.9451667 C40.2482243,46.9451667 41.125,45.9498589 41.125,44.7220845 L41.125,22.2822926 C40.4887822,22.4116582 39.8442868,22.4815492 39.198,22.4912623 Z"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </a>
          </li>
          <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">TouristSpot</a></li>
          <li class="breadcrumb-item text-sm text-dark active" aria-current="page">${famous_restraurant.location}</li>
        </ol>
       
      </nav>

    </div>
      <!-- End Navbar -->
    <div class="container-fluid py-4 px-lg-5">
         
      <div class="row ">
        <div class="col-lg-9 col-12 mx-auto">
          <div class="card card-body mt-4">
              <img class="img-fluid border-radius-lg" src="${famous_restraurant.image}" />
              <h5 class="mb-0 mt-2">제목 : ${famous_restraurant.title}</h5>
              <p class="text-sm mb-1 mt-1" >
              <label for="projectName" class="form-label">식당이름 : ${famous_restraurant.name}</label>
              <div class="col-20 col-md-11">   
                 <div class="row text-end">
                 <div class="col-6">
               		<label for="projectName" class="col-6 form-label">글쓴이 : ${famous_restraurant.nickname}</label>
                 </div>
                 <div class="col-6">
                	<label for="projectName" class="col-6 form-label">좋아요 : ${famous_restraurant.positive_num}</label>                   
                 </div>
               </div>
             
              </div>
              <hr class="horizontal dark my-3">
            <label for="projectName" class="col-6 form-label">지역명: ${famous_restraurant.location}</label>
            <label for="projectName" class="col-6 form-label">설명</label>
            <label for="projectName" class="col-6 form-label">${famous_restraurant.description}</label>
            <label for="projectName" class="col-6 form-label">해시태그 : ${famous_restraurant.hashtag}</label>
            
            <div class="d-flex justify-content-end mt-4">  
              <button type="button" name="button" onclick="history.back()"  class="btn btn-light btn-outline-dark m-0">back</button>
             
            </div>
          </div>
        </div>
      </div>
  </div>
 
   

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
</html>