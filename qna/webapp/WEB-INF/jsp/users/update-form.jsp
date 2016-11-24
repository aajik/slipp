<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../commons/_header.jspf" %>
</head>
<body>
<%@ include file="../commons/_header.jspf" %>
<div class="container">
   <div class="row">
      <div class="span12">
		<secton id="typography">
			<div class="page-header">
				<h1>개인정보 수정</h1>
			</div>			
	          <form name="form-horizantal" action="/users/update" method="post" >
	         	  <input type="hidden" name="userId" value="${user.userId}" />
	              <div class="control-group">
	                  <label class="control-group" for="userId">사용자 아이디</label>
	                  <div class="controls">
	                  	${user.userId}
	                  </div>
	              </div>
	              <div class="control-group">
	                  <label class="control-group" for="password">비밀번호</label>
	                  <input type="password" id="password" name="password" value="${user.password}" placeholder="Password">
	              </div>
	              <div class="control-group">
	                  <label class="control-group" for="name">이름</label>
	                  <input class="text" id="name" name="name" placeholder="" value="${user.name}" >
	              </div>
	              <div class="control-group">
	                  <label class="control-group" for="email">이메일</label>
	                  <input type="email" class="control-group" id="email" name="email" placeholder="" value="${user.email}">
	              </div>
	              <button type="submit" class="btn btn-success clearfix pull-right">수정완료</button>
	              <div class="clearfix" />
	          </form>
          {{/user}}
        </div>
    </div>
</div>

<!-- script references -->
<script src="../js/jquery-2.2.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/scripts.js"></script>
	</body>

</html>