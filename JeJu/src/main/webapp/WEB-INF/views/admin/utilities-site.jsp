<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
 
<head>

    <title>Manager Page</title>

    <!-- Custom fonts for this template-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/resources/css/sb-admin-2.min.css"/>" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    
	<link href="<c:url value="/resources/css/admin.css"/>" rel="stylesheet">
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
            <li class="nav-item active">
                <a class="nav-link" href="<c:url value="/admin/main"/>">
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
                <a class="nav-link collapsed" href="<c:url value="/admin/site"/>" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>사이트 관리</span>
                </a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="<c:url value="/admin/user"/>" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-users-cog"></i>
                    <span>회원 관리</span>
                </a>

            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">


            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <button class="btn-3" onclick="window.location='<c:url value='/admin/logout'/>'">Logout</button>
            </li>

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle" style="margin-top: 140px;"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

       <div id="content-wrapper" class="d-flex flex-column">
        
        <!-- Main Content -->
        <div id="content">

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">사이트 관리</h1>
              
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">변경</h6>
                    </div>
                    <div class="card-body">
                    	<form action="<c:url value="/admin/site/success"/>" method="post"
                        enctype="multipart/form-data">
                    		<div>
                    		<input type="hidden" name="prev-image" value="${main.image }">
                    		<img src=".${main.image }" id="main-visual-image" class="img-fluid" alt="main-visual-image"><br>
	                       	<input id="file-name" class="file-name" value="${main.image }" placeholder="첨부파일">
	                       	<label class="input-button mt-3" for="image">
							  업로드
							</label>
	                       	<input type="file" name="imageFile" id="image">
	                       	</div>
	                       	
	                       	<div class="mt-3">
	                       	<label for="title" class="form-label">Visual Title</label> 
							<input type="text" class="form-text w-25" name="title" id="title" value="${main.title }">
							</div>
							
							<div class="mt-3">
	                       	<label for="sub-title" class="form-label">Visual Sub Title</label> 
							<input type="text" class="form-text w-25" name="sub_title" id="sub-title" value="${main.sub_title }">
							</div>
	                       	<input class="input-button mt-5" type="submit" value="저장">
                    	</form>
                    	
                    </div>
                </div>

            </div>

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
    <script src="<c:url value="/resources/js/admin/admin_site.js"/>"></script>

</body>

</html>