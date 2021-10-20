<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>게시판 폼</title>
	
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
	        <div class="container px-4 px-lg-5 mb-3">
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
	     <c:forEach var ="tourist" items="${tourist_spot }" />
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
	          <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Best Pick</a></li>
	          <li class="breadcrumb-item text-sm text-dark active" aria-current="page">New Project</li>
	        </ol>
	        <h6 class="font-weight-bolder mb-0">New Project</h6>
	      </nav>
	
	    </div>
	    
	    <!-- End Navbar -->
	    <div id="form-container" class="container-fluid py-4 px-lg-5">
	    	
	        <div class="row">
	          <div class="col-lg-9 col-12 mx-auto">
	            <div class="card card-body mt-4">
	              <h5 class="mb-0 mt-2">제주의 관광 명소</h5>
	              <p class="text-sm mb-0 mt-1">새로운 제주의 볼거리를 추가해보세요</p>
	              <hr class="horizontal dark my-3">
		   		  
		   		  <form action="/addTourist/success" method="post" enctype="multipart/form-data" > 
	              
	              <label for="projectName" class="form-label">제목</label>
	              <input type="text" class="form-control" name="title" id="title" placeholder="제목을 적어주세요">
	              <label for="projectName" class="form-label mt-2">명소이름</label>
	              <input type="text" class="form-control" name="name" id="name" placeholder="이름을 적어주세요">
	              <Select name="location_id ">
					<c:forEach items="${locations }" var="location" varStatus="i">
					<option id="location" name="location" value="${location.location_id }">${location.location } </option>
						<br>
					</c:forEach>
				</Select>
	             
	              <label class="mt-4 form-label">내용</label>
	              <p class="form-text text-muted text-xs ms-1">
	                이곳을 추천하는 이유를 적어주세요
	              </p>
	              <!-- <div id="editor" class="ql-container ql-snow"> -->
	                <input name="description" id="description" class="form-control" data-gramm="false" contenteditable="true" />

<!-- 	              </div> -->
	              <label class="mt-4 form-label">Tags</label>
	              <input name="hashtag" type="text" class="form-control mt-2" id="hasheTag">
	              
	              <label class="mt-4 form-label">Starting Files</label>
	              <!-- file add -->
	              
	               <input type="file" name="image" id="image">
	              
	              
	              
	              
	              <div class="d-flex justify-content-end mt-4">  
	                <button type="button" onclick="<c:url value='/addTourist'/>" name="button" class="btn btn-light btn-outline-dark m-0">Cancel</button>
	                <button id="btnSave" type="button" class="btn btn-success m-0 ms-2" onclick="uploadFile();">Upload</button>
	              </div>
	              </form>
			   
	            </div>
	          </div>
	        </div>
	    </div>
	    

	
	
	    <!-- Form -->
	
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
	    <!-- scripts -->
	    <script src="<c:url value='/resources/js/scripts.js' />"></script>
	   
	   <script src="<c:url value='/resources/js/form.js/'/>" ></script>
	   
	  
	</body>
</html>