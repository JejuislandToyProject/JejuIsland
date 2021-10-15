<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>유명 맛집 테스트</title>
</head>
<body>
	<ul>
	<c:forEach var="restaurant" items="${restaurants }">
		<li>${restaurant.name }</li>
		<li>${restaurant.nickname }</li>
		<li>${restaurant.title }</li>
		<li>${restaurant.registration_time }</li>
	</c:forEach>
	</ul>
</body>
</html>