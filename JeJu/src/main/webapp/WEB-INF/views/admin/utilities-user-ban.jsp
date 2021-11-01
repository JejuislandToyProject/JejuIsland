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

    <!-- Custom styles for this page -->
    <link href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    
	<link href="<c:url value="/resources/css/admin.css"/>" rel="stylesheet">
</head>

<body id="page-top">
 <!-- Page Wrapper -->
    <div id="wrapper">
        <!-- Sidebar -->
       <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
			<div class="nav-content">
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
                <h1 class="h3 mb-2 text-gray-800">회원 관리</h1>
              
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">회원 리스트</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>NickName</th>
                                        <th>ID</th>
                                        <th>Lock & UnLock</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>NickName</th>
                                        <th>ID</th>
                                        <th>Lock & UnLock</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                
                                </tbody>
                            </table>
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

	<!-- Page level plugins -->
	<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
	
    <!-- Page level custom scripts -->
    <script src="<c:url value="/resources/js/admin/user_datatables.js"/>"></script>
    
    
</body>

</html>