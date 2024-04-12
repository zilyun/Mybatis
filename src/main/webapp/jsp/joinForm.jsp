<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>회원가입</title>
<!-- 회원가입 디자인 -->
<link href="${pageContext.request.contextPath}/css/join.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/jquery-3.7.1.js"></script>
</head>
<body style="background-color: #474e5d">
	<div class="container">
		<form method="post" action="joinPro.net" name="joinform">
			<h1>회원가입</h1>
			<hr>
			<b>아이디</b> 
			<input type="text" name="id" id="id" placeholder="Enter ID" required>
			<span id="id_message"></span>

			<b>비밀번호</b> 
			<input type="password" name="password" id="pass" placeholder="Enter Password" required>
		
			<div class="clearfix">
				<button type="submit" class="submitbtn">회원가입</button>
				<button type="reset" class="cancelbtn">다시작성</button>
			</div>
		</form>
	</div>
</body>
</html>