<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입::SLiPP</title>
<%@ include file="../commons/_header.jspf" %>

</head>
<body>
	<%@ include file="../commons/_top.jspf" %>
	<div class="container">
		<div class="row">
			<div class="span12">
				<section id="typography"
				<div class="page-header">
					<c:choose>
						<c:when test="${empty user.userId} }">
							<h1>회원가입</h1>
						</c:when>
					<c:otherwise>
						<h1>개인정보 수정</h1>
					</c:otherwise>
					</c:choose>
				</div>
				<!-- <form class="form-horiaontal" action="/users/create" method="post"> -->
				<form:form modelAttribute="user" cssClass="form-horiaontal" action="/users/create" method="post">
					<div class="control-group">
						<label class="control-label" for="userId">사용자 아이디</label>
						<div class="controls">
							<form:input path="userId"/>
							<%-- <input type="text" name="userId" value="${user.userId}" /> --%>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="password">사용자 비밀번호</label>
						<div class="controls">
							<form:input path="password"/>
							<%-- <input type="password" id ="password" name="password" value="${user.password}" placeholder="" /> --%>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="name">이름</label>
						<div class="controls">
							<form:input path="name"/>
							<%-- <input type="text" id="name" name="name" value="${user.name}" placeholder="" /> --%>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="email">이메일</label>
						<div class="controls">
							<form:input path="email"/>
							<%-- <input type="text" id="email" name="email" value="${user.email}" placeholder="" /> --%>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn btn-primary" >회윈가입</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>