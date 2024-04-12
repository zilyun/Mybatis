<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="${pageContext.request.contextPath}/css/login.css" type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-3.7.1.js"></script>
<script>
	$(function(){
		$(".join").click(function() {
			location.href="joinForm.net";
		});
	})
</script>
</head>
<body>
<form action="loginPro.net" method="post">
	<h1>로그인</h1>
	<hr>
	<b>아이디</b>
	<input type="text" name="id" placeholder="Enter id" maxlength="10" required />
	<b>Password</b>
	<input type="password" name="password" placeholder="Enter password" maxlength="10" required />
	<div class="clearfix">
		<button type="submit" class="submitbtn">로그인</button>
		<button type="button" class="join">회원가입</button>
	</div>
</form>
</body>
</html>