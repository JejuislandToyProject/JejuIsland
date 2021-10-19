<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/styles.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/mypage.css"/>" rel="stylesheet">
<title>MyPage</title>
</head>
<body>
	<header>
		<h1 class="m-3">Travel Jeju</h1>
		<p class="lead m-3 mb-5 text-center">${restaurants[0].nickname }님의 마이페이지</p>
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
					<a href="#notice"
						class="list-group-item list-group-item-action active"
						id="list-notice-list" data-bs-toggle="list" href="#notice"
						role="tab"> 공지사항 </a> <a href="#mywrite"
						class="list-group-item list-group-item-action"
						id="list-mywrite-list" data-bs-toggle="list" href="#mywrite"
						role="tab"> 내가 쓴글 </a> <a href="#route"
						class="list-group-item list-group-item-action"
						id="list-route-list" data-bs-toggle="list" href="#route"
						role="tab"> 내가 만든 경로 </a>
				</div>

				<!-- Tab panes -->
				<div id="content" class="col g-0">
					<div class="tab-content w-75 mx-5 mt-5">
						<div class="tab-pane fade show active" id="notice" role="tabpanel">
							notice</div>
						<div class="tab-pane fade show" id="mywrite" role="tabpanel">
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
<%-- 									<c:forEach var="restaurant" items="${restaurants }" varStatus="status">
										<td class="title"><a href="#">${restaurant.title }</a></td>
										<td class="name">${restaurant.nickname }</td>
										<td class="date">${registerDate[status.index] }</td>
									</c:forEach> --%>
								</tbody>
							</table>
							<br>
							<nav aria-label="Page navigation">
								<ul id="pagination" class="pagination justify-content-center">
								</ul>
							</nav>
						</div>
						<div class="tab-pane fade show" id="route" role="tabpanel">
							route</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<c:url value="/resources/js/scripts.js"/>"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="<c:url value="/resources/js/jquery.twbsPagination.min.js"/>"></script>
	<script src="<c:url value="/resources/js/mypage.js"/>"></script>
</body>
</html>


