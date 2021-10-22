<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>PolygonAndModal</title>

<link rel="stylesheet" href="<c:url value="/resources/css/Area.css"/>">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://kit.fontawesome.com/cc0398a704.js" crossorigin="anonymous"></script>
</head>
<body>
	<div id="map" style="width: 100%; height: 350px;"></div>

	<div class="modal">
		<div class="modal-content">
			<div class="image-box">
			<img src="https://i2.wp.com/blog.findmybucketlist.com/wp-content/uploads/2020/10/%EC%A0%9C%EC%A3%BC%EB%8F%84-2.jpg?resize=792%2C446&ssl=1"
			style="width: 100%; height: 450px;">
			</div>
			
			<div class="text-box">
				
				<div class="text-title">
				<div id="title"></div>
				<div id="location"></div>
				<div class="zero_padding20"></div>
				<button class="btn-close">&times;</button>
				</div>
				<div id="text-desc"></div>
				<div class="icon-pasing">
				<i class="far fa-thumbs-up"></i>
				<i class="fas fa-bolt"></i>
				<i class="fas fa-globe-americas"></i>
				<i class="fas fa-piggy-bank"></i>
				</div>
				 <input id="modalBtn" type="submit" value="상세보기">
			</div>
		</div>
	</div>
	<div class="overlay"></div>



	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=115edfd07bd1f09ac3a8881810a2bb4b"></script>
	<script src="<c:url value="/resources/js/polygon.js"/>"></script>
</body>
</html>
