<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
					<h1>회원가입</h1>
				</div>
				<!-- <form class="form-horiaontal" action="/users" method="post"> -->
				<form:form modelAttribute="user" cssClass="form-horiaontal" action="/users" method="post">
				
					<div class="control-group">
						<label class="control-label" for="userId">사용자 아이디</label>
						<div class="controls">
							<!-- <input type="text" name="userId" value="" /> -->
							<form:input path="userId"/>
							<form:errors path="userId" cssClass="error" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="password">사용자 비밀번호</label>
						<div class="controls">
							<!-- <input type="password" id ="password" name="password" value="" placeholder="" /> -->
							<form:input path="password"/>
							<form:errors path="password" cssClass="error" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="name">이름</label>
						<div class="controls">							
							<!-- <input type="text" id="name" name="name" value="" placeholder="" /> -->
							<form:input path="name"/>
							<form:errors path="name" cssClass="error" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="email">이메일</label>
						<div class="controls">
							<!-- <input type="text" id="email" name="email" value="" placeholder="" /> -->
							<form:input path="email"/>
							<form:errors path="email" cssClass="error" />
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn btn-primary" >회윈가입</button>
						</div>
					</div>
				</form:form>					
<%-- 				</form> --%>
			</div>
		</div>
	</div>
</body>
</html>