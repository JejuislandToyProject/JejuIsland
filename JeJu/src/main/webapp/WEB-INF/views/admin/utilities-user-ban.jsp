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
                                    <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Garrett Winters</td>
                                        <td>Accountant</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Ashton Cox</td>
                                        <td>Junior Technical Author</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Cedric Kelly</td>
                                        <td>Senior Javascript Developer</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Airi Satou</td>
                                        <td>Accountant</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Brielle Williamson</td>
                                        <td>Integration Specialist</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Herrod Chandler</td>
                                        <td>Sales Assistant</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Rhona Davidson</td>
                                        <td>Integration Specialist</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Colleen Hurst</td>
                                        <td>Javascript Developer</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Sonya Frost</td>
                                        <td>Software Engineer</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Jena Gaines</td>
                                        <td>Office Manager</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Quinn Flynn</td>
                                        <td>Support Lead</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Charde Marshall</td>
                                        <td>Regional Director</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Haley Kennedy</td>
                                        <td>Senior Marketing Designer</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Tatyana Fitzpatrick</td>
                                        <td>Regional Director</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Michael Silva</td>
                                        <td>Marketing Designer</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Paul Byrd</td>
                                        <td>Chief Financial Officer (CFO)</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Gloria Little</td>
                                        <td>Systems Administrator</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Bradley Greer</td>
                                        <td>Software Engineer</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Dai Rios</td>
                                        <td>Personnel Lead</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Jenette Caldwell</td>
                                        <td>Development Lead</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Yuri Berry</td>
                                        <td>Chief Marketing Officer (CMO)</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Caesar Vance</td>
                                        <td>Pre-Sales Support</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Doris Wilder</td>
                                        <td>Sales Assistant</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Angelica Ramos</td>
                                        <td>Chief Executive Officer (CEO)</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Gavin Joyce</td>
                                        <td>Developer</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Jennifer Chang</td>
                                        <td>Regional Director</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Brenden Wagner</td>
                                        <td>Software Engineer</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Fiona Green</td>
                                        <td>Chief Operating Officer (COO)</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Shou Itou</td>
                                        <td>Regional Marketing</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Michelle House</td>
                                        <td>Integration Specialist</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Suki Burks</td>
                                        <td>Developer</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Prescott Bartlett</td>
                                        <td>Technical Author</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Gavin Cortez</td>
                                        <td>Team Leader</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Martena Mccray</td>
                                        <td>Post-Sales support</td>
                                        <td>
                                            <label class="switch" style="margin-top: 5px;">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                              </label>
                                              <p style="display:none;"></p>
                                        </td>
                                    </tr>
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
    <script src="<c:url value="/resources/js/admin/datatables-demo.js"/>"></script>
    
    <script src="<c:url value="/resources/js/admin/user_ban_button.js"/>"></script>
    
    
</body>

</html>