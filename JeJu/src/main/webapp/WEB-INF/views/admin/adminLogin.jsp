<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>TRAVEL JEJU ADMIN</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/sign-in/">

<!-- Bootstrap core CSS -->
<%-- <link href="<c:url value="/resources/css/sb-admin-2.min.css"/>" rel="stylesheet"> --%>
<link href="<c:url value="/resources/css/styles.css"/>" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/adminSignIn.css"/>"
	rel="stylesheet">
</head>
<body class="text-center">
	<main class="form-signin">
		<form name="f" action="<c:url value="/admin/perform_login"/>" method="POST">
			<h1 class="logo fw-normal">TRAVEL JEJU</h1>
			<h2 class="h3 mb-3 fw-normal">Please sign in</h2>

			<div class="form-floating">
				<input name="id" type="id" class="form-control" id="floatingInput"
					placeholder="id"> 
				<label for="floatingInput">ID</label>
			</div>
			<div class="form-floating">
				<input name="password" type="password" class="form-control"
					id="floatingPassword" placeholder="Password"> 
				<label for="floatingPassword">Password</label>
			</div>

			<div class="checkbox mb-3">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<button class="w-100 btn btn-lg btn-primary align-middle" type="submit">Sign in</button>
			<p class="mt-5 mb-3 text-muted">&copy; travel Jeju 2021</p>
		</form>
	</main>



</body>
</html>
