<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<jsp:useBean id="user" class="information.User" scope="request"/>
<jsp:setProperty name="user" property="*"/>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>회원가입 완료</title>
	</head>
	<body>
		<p>이름 : <jsp:getProperty property="name" name="user"/></p>
		<p>이메일 : <jsp:getProperty property="email" name="user"/></p>
		<p>아이디 : <jsp:getProperty property="id" name="user"/></p>
		<p>전화번호 : <jsp:getProperty property="phone_num" name="user"/></p>
		<p>휴대전화번호 : <jsp:getProperty property="person_phone_num" name="user"/></p>
	</body>
</html>