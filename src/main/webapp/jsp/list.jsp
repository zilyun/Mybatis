<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.hta.member.domain.Member"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ArrayList이용합니다.</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.7.1.js"></script>
<style>
.container {
	width: 500px;
	margin-top: 3em;
}

table, h4 {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<fieldset>
			<legend>회원 리스트</legend>
			<c:if test="${!empty list}">
				<table class="table">
					<thead>
						<tr>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="member" items="${list}">
							<tr>
								<td>${member.id}</td>
								<td>${member.password}</td>
								<td>
									<button class="btn btn-info btn-sm" type="button"
										data-id="${member.id}">수정</button>
								</td>
								<td><c:if test="${member.id!='admin'}">
										<button class="btn btn-danger btn-sm" type="button"
											data-id="${member.id}">삭제</button>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
			<c:if test="${empty list}">
				<h4>조회된 데이터가 없습니다.</h4>
			</c:if>
			<a href="main.net">메인으로</a>
		</fieldset>
	</div>
	<script>
		$(".btn-info").click(function() {
			const id = $(this).attr("data-id");
			location.href = 'updateForm.net?id='+id;
		})
		
		$(".btn-danger").click(function() {
			const id = $(this).attr("data-id");
			if(confirm('정말 삭제하시겠습니까?')){
				location.href = 'delete.net?id='+id;
			}
		})
	</script>
</body>
</html>