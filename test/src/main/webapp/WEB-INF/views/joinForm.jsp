<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script> 
	<script type="text/javascript" src="<c:url value='/js/common.js'/>" ></script>
</head>
<body>
	<h3>Join</h3>

<div>
	<form name="joinForm" method="post">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" id="id">  <a href="javascript:void(0)" onclick="chkForm()">중복확인</a></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="pw" id="pw"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="text" name="pw2" id="pw2"></td>
			</tr>
		</table>
		<input type="hidden" name="chkId" id="chkId" value="0">
	</form>
</div>

<div>
	<a href="<c:url value='/join2'/>">가입하기</a> &nbsp;&nbsp; <a href="javascript:history.go(-1)">뒤로가기</a>
</div>
</body>
</html>
