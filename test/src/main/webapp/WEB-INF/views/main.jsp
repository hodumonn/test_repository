<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style>
		a { text-decoration:none; };
		a:hover{ text-decoration:underline; };
	</style>
</head>
<body>
<h3>Main</h3>

<div>
	<form name="loginForm" method="post">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" id="id"></td>
			</tr>
			<tr>
			
				<th>비밀번호</th>
				<td><input type="text" name="pw" id="pw"></td>
			</tr>
		</table>
	</form>
</div>

<div>
	<a href="<c:url value='/join'/>" target="_blank">가입</a>
</div>
</body>
</html>
