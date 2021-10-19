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
		<p class="lead m-3 mb-5 text-center">홍길동님의 마이페이지</p>
		<ul class="nav nav-pills nav-tabs justify-content-end top-nav">
			<li class="nav-item"><a class="nav-link" data-bs-toggle="tab" aria-current="page" href="#">Home</a></li>
			<li class="nav-item"><a class="nav-link"  data-bs-toggle="tab" href="#">Logout</a></li>
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
										<th scope="col">날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="title"><a href="#">게시판 제목이 들어갑니다.</a> <img
											width="13" height="12" class="pic" alt="첨부이미지"
											src="첨부파일 ic_pic.gif"> <a class="comment" href="#">[5]</a>
										</td>
										<td class="name">글쓴이이름</td>
										<td class="date">2021/10/15</td>
									</tr>

									<tr>
										<td class="title"><a href="#">게시판 제목이 들어갑니다.2.</a> <a
											class="comment" href="#"></a></td>
										<td class="name">글쓴이이름</td>
										<td class="date">2021/10/15</td>
									</tr>

									<tr>
										<td class="title"><a href="#">게시판 제목이 들어갑니다.3.</a> <a
											class="comment" href="#">[2]</a></td>
										<td class="name">글쓴이이름</td>
										<td class="date">2021/10/15</td>
									</tr>

									<tr>
										<td class="title"><a href="#">게시판 제목이 들어갑니다.4.</a> <a
											class="comment" href="#">[2]</a></td>
										<td class="name">글쓴이이름</td>
										<td class="date">2021/10/15</td>
									</tr>

									<tr>
										<td class="title"><a href="#">게시판 제목이 들어갑니다.5.</a> <a
											class="comment" href="#">[2]</a></td>
										<td class="name">글쓴이이름</td>
										<td class="date">2021/10/15</td>
									</tr>
								</tbody>
							</table>
							<br>
							<nav aria-label="Page navigation">
								<ul class="pagination justify-content-center">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
									</a></li>
								</ul>
							</nav>
						</div>
						<div class="tab-pane fade show" id="route" role="tabpanel">
							route</div>
					</div>
				</div>


				<%-- <div class="cont1">
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
										<th scope="col">날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="title"><a href="#">게시판 제목이 들어갑니다.</a> <img
											width="13" height="12" class="pic" alt="첨부이미지"
											src="첨부파일 ic_pic.gif"> <a class="comment" href="#">[5]</a>
										</td>
										<td class="name">글쓴이이름</td>
										<td class="date">2021/10/15</td>
									</tr>

									<tr>
										<td class="title"><a href="#">게시판 제목이 들어갑니다.2.</a> <a
											class="comment" href="#"></a></td>
										<td class="name">글쓴이이름</td>
										<td class="date">2021/10/15</td>
									</tr>

									<tr>
										<td class="title"><a href="#">게시판 제목이 들어갑니다.3.</a> <a
											class="comment" href="#">[2]</a></td>
										<td class="name">글쓴이이름</td>
										<td class="date">2021/10/15</td>
									</tr>

									<tr>
										<td class="title"><a href="#">게시판 제목이 들어갑니다.4.</a> <a
											class="comment" href="#">[2]</a></td>
										<td class="name">글쓴이이름</td>
										<td class="date">2021/10/15</td>
									</tr>

									<tr>
										<td class="title"><a href="#">게시판 제목이 들어갑니다.5.</a> <a
											class="comment" href="#">[2]</a></td>
										<td class="name">글쓴이이름</td>
										<td class="date">2021/10/15</td>
									</tr>
								</tbody>
							</table>
							<br>
							<nav aria-label="Page navigation">
								<ul class="pagination justify-content-center">
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Previous"> 
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
										</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Next"> 
											<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
										</a>
									</li>
								</ul>
							</nav>
						</div>
					</article> --%>
				</section>

			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<c:url value="/resources/js/scripts.js"/>"></script>
</body>
</html>


