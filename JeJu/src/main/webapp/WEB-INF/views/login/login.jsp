<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>🍊Travel Jeju🍊 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/resources/css/sb-admin-2.min.css"/>" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">

                        <!-- Nested Row within Card Body -->
                        <div class="row header">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>

                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <form class="user">
                                            <div style="text-align: center; font-size: 18px;  font-family :'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
                                                <h1><b>Join</b></h1>
                                                <p>기존에 사용하시는 계정으로<br> 간단하게 회원가입 하세요.</p>
                                            </div>
                                            <div class="form-group">
                                                <a href="${naverAuthUrl }" class="btn btn-user btn-block"><img style="width: 298px; height: 65px; " src="assets/img/btn_naver.png"/></a>   
                                            </div>
                                            <div class="form-group">
                                                <a href="${kakaoAuthUrl }"><img style="width: 298px; height: 65px; margin-left: 3px;" src="assets/img/kakao_login_large_wide.png"/></a>
                                            </div>               
                                        </form>
                                    </div> 

                                </div>
                            <svg class="waves" viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
                                <defs>
                                    <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
                                </defs>
                                <g class="parallax">
                                    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
                                    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
                                    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
                                    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
                                </g>
                            </svg>
                        </div>      
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<c:url value="/resources/js/sb-admin-2.min.js"/>"></script>

</body>

</html>