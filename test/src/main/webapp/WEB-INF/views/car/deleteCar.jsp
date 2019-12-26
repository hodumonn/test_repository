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
	
	var car_key;
	
	$('input:checkbox[name=chk_box]').on('click', function(){
		var checkbox_id = $(this).attr('id');
		
		var idx;
		
		//하나만 선택되게 하기
		$('input:checkbox[name=chk_box]').each(function(i){
			
			if(checkbox_id != $(this).attr('id')){
				$(this).attr("checked", false);
			}else{
				idx = i
			}
		});
		
		var tr = $(this).parent().parent().eq(0);
		
		var td = tr.children();
		
		car_key = td.eq(4).text();
	});
	
	$('#delete_btn').on('click', function(){
		$.ajax({
			type: 'DELETE',
			url: '/test/car/deleteCar/' + car_key,
			dataType: 'text',
			error: function(xhr, status, err){
				console.log(err);
			},
			success: function(rst){
				if(rst == 'success'){
					alert("삭제되었습니다.");
					location.reload();
				}else{
					alert("삭제에 실패했습니다.");
				}
			}
		});
	});
});
</script>
</head>
<body>
	<br><br><br>
	<table>
		<tr>
			<th></th>
			<th>no</th>
			<th>CAR_INDEX</th>
			<th>CAR_NAME</th>
		</tr>
		<c:forEach items="${car_list }" var="car" varStatus="status">
			<tr>
				<td><input type="checkbox" name="chk_box" id="car_${status.count }"></td>
				<td>${status.count }</td>
				<td>${car.car_index }</td>
				<td>${car.car_name }</td>
				<td style="display:none;">${car.car_key }</td>
			</tr>
		</c:forEach>
	</table>
	
	<br><br>
	
	<button type="button" id="delete_btn">삭제</button>
	
</body>

</html>