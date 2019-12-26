<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script> 

<script>
$('document').ready(function(){
	setInterval(function(){
		var date = new Date();
		var h = date.getHours();
		var m = date.getMinutes();
		var s = date.getSeconds();
		
		if(m < 10){
			m = '0' + m;
		}
		
		if(s < 10){
			s = '0' + s;
		}
		document.getElementById('timer').innerHTML = h + ":" + m + ":" + s;
	}, 1000);
});
</script>
</head>
<body>
	<div>
		<span id="timer"></span>
	</div>
	<br><br><br>
	<table>
		<tr>
			<td>자동차 등록 - </td>
			<td><a href="/test/car/createCar" target="_blank">/test/car/createCar</a></td>
		</tr>
		<tr>
			<td>자동차 조회 - </td>
			<td><a href="/test/car/carList" target="_blank">/test/car/carList</a></td>
		</tr>
		<tr>
			<td>자동차 수정 - </td>
			<td><a href="/test/car/modifyCar" target="_blank">/test/car/modifyCar</a></td>
		</tr>
		<tr>
			<td>자동차 삭제 - </td>
			<td><a href="/test/car/deleteCar" target="_blank">/test/car/deleteCar</a></td>
		</tr>
	</table>
	
</body>
</html>