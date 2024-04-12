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
			<input type="password" name="pass" id="pass" placeholder="Enter Password" required>

			<b>이름</b>
			<input type="text" name="name" placeholder="Enter name" maxlength="5" required> 
				
			<b>나이</b>
			<input type="text" name="age" maxlength="2" placeholder="Enter age" required> 
			
			<b>성별</b>
			<div>
				<input type="radio" name="gender" value="m" id="gender1" checked><span>남자</span>
				<input type="radio" name="gender" value="f" id="gender2"><span>여자</span>
			</div>

			<b>이메일 주소</b>
			<input type="text" name="email" placeholder="Enter email" maxlength="30" required>
			<span id="email_message"></span>
			
			<div class="clearfix">
				<button type="submit" class="submitbtn">회원가입</button>
				<button type="reset" class="cancelbtn">다시작성</button>
			</div>
		</form>
	</div>
</body>
</html>