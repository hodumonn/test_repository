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
$('#document').ready(function(){
	$('#create_btn').on('click', function(){
		$.ajax({
			type: 'POST',
			url: '/test/car/createCar',
			data: $('#create_form').serialize(),
			dataType: 'text',
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			error: function(xhr, status, err){
				console.log(err);
			},
			success: function(rst){
				if(rst == 'success'){
					alert("등록되었습니다.");
					location.reload();
				}else{
					alert("등록에 실패했습니다.");
				}
			}
		});
	});
});
</script>
</head>
<body>
	<br><br><br>
	<form id="create_form">
		<table>
			<tr>
				<td>자동차 INDEX</td>
				<td><input type="text" name="car_index"></td>
			</tr>	
			<tr>
				<td>자동차 NAME</td>
				<td><input type="text" name="car_name"></td>
			</tr>
		</table>
	</form>
	<button type="button" id="create_btn">등록</button>
</body>

</html>