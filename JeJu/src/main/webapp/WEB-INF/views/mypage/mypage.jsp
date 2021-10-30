<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/styles.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/mypage.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>MyPage</title>
</head>
<body>
	<header>
		<h1><a href="<c:url value="/"/>">TRAVEL JEJU</a></h1>
		<p class="lead m-3 mb-5 text-center">${user.nickname }님의 마이페이지</p>
		<ul class="nav nav-pills justify-content-end top-nav">
			<li class="nav-item"><a class="nav-link" href="<c:url value="/"/>">Home</a></li>
			<li class="nav-item"><a class="nav-link"  href="<c:url value="/logout"/>">Logout</a></li>
		</ul>
	</header>
	<div id="page">
		

		<div class="container-fluid p-0 ">
			<div class="row" role="tabpanel">

				<!-- List group -->
				<div class="list-group col-lg-2 g-0" id="list-tab" role="tablist">
					<a href="#mywrite"
						class="list-group-item list-group-item-action active"
						id="list-mywrite-list" data-bs-toggle="list" href="#mywrite"
						role="tab"> 내가 쓴글 </a> 
					<a href="#course"
						class="list-group-item list-group-item-action"
						id="list-course-list" data-bs-toggle="list" href="#course"
						role="tab"> 내가 만든 경로 </a>
				</div>

				<!-- Tab panes -->
				<div id="content" class="col g-0">
					<div class="tab-content w-75 mx-5 mt-5">
						<div class="tab-pane fade show active" id="mywrite" role="tabpanel">
							<table class="table table-stripted" summary="게시판의 글제목 리스트">
								<colgroup>
									<col width="330">
									<col width="100">
									<col width="80">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">제목</th>
										<th scope="col">글쓴이</th>
										<th scope="col">날짜</th>
									</tr>
								</thead>
								<tbody id="myWriteTable">
								</tbody>
							</table>
							<br>
							<nav aria-label="Page navigation">
								<ul id="myWrite-pagination" class="pagination justify-content-center">
								</ul>
							</nav>
						</div>
						<div class="tab-pane fade show" id="course" role="tabpanel">
							<div class="courseBtn"><a href="<c:url value="/travelCourse/course"/>">Make New Course<a></a></div>
							<table class="table table-stripted">
								<colgroup>
									<col width="10">
									<col>
								</colgroup>
								<thead>
									<tr>
										<th scope="col">no.</th>
										<th class="text-center" scope="col">경로</th>
									</tr>
								</thead>
								<tbody id="myCourseTable" class="container">
								</tbody>
							</table>
							<br>
							<nav aria-label="Page navigation">
								<ul id="myCourse-pagination" class="pagination justify-content-center">
								</ul>
							</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="<c:url value="/resources/js/jquery.twbsPagination.min.js"/>"></script>
	<script src="<c:url value="/resources/js/mypage.js"/>"></script>
</body>
</html>


