<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
 
<head>
 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Manager Page</title>

    <!-- Custom fonts for this template-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/resources/css/sb-admin-2.min.css"/>" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fab fa-whmcs"></i>
                </div>
                <div class="sidebar-brand-text mx-3">관리자 페이지</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

           <!-- Nav Item - Pages Collapse Menu -->
           <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>사이트 관리</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">사이트 관리 메뉴</h6>
                    <a class="collapse-item" href="site1.html">페이지 1번</a>
                    <a class="collapse-item" href="site2.html">페이지 2번</a>
                </div>
            </div>
        </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-users-cog"></i>
                    <span>회원 관리</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">회원 관리 메뉴</h6>
                        <a class="collapse-item" href="utilities-user-ban.html">회원 차단&해제</a>
                        <a class="collapse-item" href="utilities-user1.html">회원 기능1</a>
                        <a class="collapse-item" href="utilities-user2.html">회원 기능2</a>
                        <a class="collapse-item" href="utilities-other.html">Other</a>
                    </div>
                </div>
            </li>

           <!-- Divider -->
           <hr class="sidebar-divider">

           <!-- Heading -->
           <div class="sidebar-heading">
               Addons
           </div>

           <!-- Nav Item - Tables -->
           <li class="nav-item">
            <a class="nav-link" href="notice-board.html">
                <i class="fas fa-fw fa-table"></i>
                <span>게시판 관리</span></a>
            </li>

           <!-- Divider -->
           <hr class="sidebar-divider d-none d-md-block">

           <!-- Sidebar Toggler (Sidebar) -->
           <div class="text-center d-none d-md-inline">
               <button class="rounded-circle border-0" id="sidebarToggle"></button>
           </div>

       </ul>
       <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow"></nav>
            <!-- Main Content -->
            <div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">페이지 2번</h1>

                    <div class="row">

                        <div class="col-lg-6">

                            <!-- Circle Buttons -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Circle Buttons</h6>
                                </div>
                                <div class="card-body">
                                    <p>Use Font Awesome Icons (included with this theme package) along with the circle
                                        buttons as shown in the examples below!</p>
                                    <!-- Circle Buttons (Default) -->
                                    <div class="mb-2">
                                        <code>.btn-circle</code>
                                    </div>
                                    <a href="#" class="btn btn-primary btn-circle">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    <a href="#" class="btn btn-success btn-circle">
                                        <i class="fas fa-check"></i>
                                    </a>
                                    <a href="#" class="btn btn-info btn-circle">
                                        <i class="fas fa-info-circle"></i>
                                    </a>
                                    <a href="#" class="btn btn-warning btn-circle">
                                        <i class="fas fa-exclamation-triangle"></i>
                                    </a>
                                    <a href="#" class="btn btn-danger btn-circle">
                                        <i class="fas fa-trash"></i>
                                    </a>
                                    <!-- Circle Buttons (Small) -->
                                    <div class="mt-4 mb-2">
                                        <code>.btn-circle .btn-sm</code>
                                    </div>
                                    <a href="#" class="btn btn-primary btn-circle btn-sm">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    <a href="#" class="btn btn-success btn-circle btn-sm">
                                        <i class="fas fa-check"></i>
                                    </a>
                                    <a href="#" class="btn btn-info btn-circle btn-sm">
                                        <i class="fas fa-info-circle"></i>
                                    </a>
                                    <a href="#" class="btn btn-warning btn-circle btn-sm">
                                        <i class="fas fa-exclamation-triangle"></i>
                                    </a>
                                    <a href="#" class="btn btn-danger btn-circle btn-sm">
                                        <i class="fas fa-trash"></i>
                                    </a>
                                    <!-- Circle Buttons (Large) -->
                                    <div class="mt-4 mb-2">
                                        <code>.btn-circle .btn-lg</code>
                                    </div>
                                    <a href="#" class="btn btn-primary btn-circle btn-lg">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    <a href="#" class="btn btn-success btn-circle btn-lg">
                                        <i class="fas fa-check"></i>
                                    </a>
                                    <a href="#" class="btn btn-info btn-circle btn-lg">
                                        <i class="fas fa-info-circle"></i>
                                    </a>
                                    <a href="#" class="btn btn-warning btn-circle btn-lg">
                                        <i class="fas fa-exclamation-triangle"></i>
                                    </a>
                                    <a href="#" class="btn btn-danger btn-circle btn-lg">
                                        <i class="fas fa-trash"></i>
                                    </a>
                                </div>
                            </div>

                            <!-- Brand Buttons -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Brand Buttons</h6>
                                </div>
                                <div class="card-body">
                                    <p>Google and Facebook buttons are available featuring each company's respective
                                        brand color. They are used on the user login and registration pages.</p>
                                    <p>You can create more custom buttons by adding a new color variable in the
                                        <code>_variables.scss</code> file and then using the Bootstrap button variant
                                        mixin to create a new style, as demonstrated in the <code>_buttons.scss</code>
                                        file.</p>
                                    <a href="#" class="btn btn-google btn-block"><i class="fab fa-google fa-fw"></i>
                                        .btn-google</a>
                                    <a href="#" class="btn btn-facebook btn-block"><i
                                            class="fab fa-facebook-f fa-fw"></i> .btn-facebook</a>

                                </div>
                            </div>

                        </div>

                        <div class="col-lg-6">

                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Split Buttons with Icon</h6>
                                </div>
                                <div class="card-body">
                                    <p>Works with any button colors, just use the <code>.btn-icon-split</code> class and
                                        the markup in the examples below. The examples below also use the
                                        <code>.text-white-50</code> helper class on the icons for additional styling,
                                        but it is not required.</p>
                                    <a href="#" class="btn btn-primary btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                        <span class="text">Split Button Primary</span>
                                    </a>
                                    <div class="my-2"></div>
                                    <a href="#" class="btn btn-success btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-check"></i>
                                        </span>
                                        <span class="text">Split Button Success</span>
                                    </a>
                                    <div class="my-2"></div>
                                    <a href="#" class="btn btn-info btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
                                        <span class="text">Split Button Info</span>
                                    </a>
                                    <div class="my-2"></div>
                                    <a href="#" class="btn btn-warning btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-exclamation-triangle"></i>
                                        </span>
                                        <span class="text">Split Button Warning</span>
                                    </a>
                                    <div class="my-2"></div>
                                    <a href="#" class="btn btn-danger btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash"></i>
                                        </span>
                                        <span class="text">Split Button Danger</span>
                                    </a>
                                    <div class="my-2"></div>
                                    <a href="#" class="btn btn-secondary btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                        <span class="text">Split Button Secondary</span>
                                    </a>
                                    <div class="my-2"></div>
                                    <a href="#" class="btn btn-light btn-icon-split">
                                        <span class="icon text-gray-600">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
                                        <span class="text">Split Button Light</span>
                                    </a>
                                    <div class="mb-4"></div>
                                    <p>Also works with small and large button classes!</p>
                                    <a href="#" class="btn btn-primary btn-icon-split btn-sm">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                        <span class="text">Split Button Small</span>
                                    </a>
                                    <div class="my-2"></div>
                                    <a href="#" class="btn btn-primary btn-icon-split btn-lg">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                        <span class="text">Split Button Large</span>
                                    </a>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Jeju Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<c:url value="/resources/js/sb-admin-2.min.js"/>"></script>

</body>

</html>