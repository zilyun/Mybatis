<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 회원수정 페이지</title>
<link href="${pageContext.request.contextPath}/css/join.css" type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-3.7.1.js"></script>
<style>
h3 {
	text-align: center; color: #1a92b9;
}
input[type=file] {
	display: none;
}
</style>
</head>
<body>
<%-- <jsp:include page="../board/header.jsp" /> --%>
<form name="joinform" action="updatePro.net" method="post">
	<h3>회원 정보 수정</h3>
	<hr>
	<b>아이디</b>
	<input type="text" name="id" value="${mem.id}" readonly>
	<b>비밀번호</b>
	<input type="password" name="password" value="${mem.password}">
	<div class="clearfix">
		<button type="submit" class="submitbtn">변경</button>
		<button type="button" class="cancelbtn">취소</button>
	</div>	
</form>
</body>
</html>