<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인::LiPP</title>
<%@ include file="../commons/_header.jspf" %>

</head>
<body>
	<%@ include file="../commons/_top.jspf" %>
	<div class="container">
		<div class="row">
			<div class="span12">
				<section id="typography"
				<div class="page-header">
					<h1>로그인</h1>
				</div>
				
				<!-- <form class="form-horiaontal" action="/users/login" method="post"> -->
				<form:form modelAttribute="authenticate" cssClass="form-horiaontal" action="/users/login" method="post">
					<div class="control-group">
						<label class="control-label" for="userId">사용자 아이디</label>
						<div class="controls">
							<form:input path="userId"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="password">사용자 비밀번호</label>
						<div class="controls">
							<form:input path="password"/>
							<!-- <input type="password" id ="password" name="password" placeholder="" /> -->
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn btn-primary" >로그인</button>
						</div>
					</div>
				</form:form>					
			</div>
		</div>
	</div>
</body>
</html>