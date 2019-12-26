<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 table {
	    width: 50%;
	    border: 1px solid #444444;
	    border-collapse: collapse;
	  }
	  th, td {
	    border: 1px solid #444444;
	  }
	  th {
	  	background-color: #6f9dbc;
	  }
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script> 

<script>
$('#document').ready(function(){
	
});
</script>
</head>
<body>
	<br><br><br>
	<table>
		<tr>
			<th>no</th>
			<th>CAR_INDEX</th>
			<th>CAR_NAME</th>
		</tr>
		<c:forEach items="${car_list }" var="car" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${car.car_index }</td>
				<td>${car.car_name }</td>
			</tr>
		</c:forEach>
	</table>
	
	<%-- <%= request.getAttribute("car_list") %> --%>
</body>

</html>