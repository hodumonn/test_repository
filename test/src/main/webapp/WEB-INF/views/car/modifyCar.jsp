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
		
		console.log(tr);
		
		var td = tr.children();
		
		var car_index = td.eq(2).text();
		var car_name = td.eq(3).text();
		var car_key = td.eq(4).text();
		
		
		$('#car_index').val(td.eq(2).text());
		$('#car_name').val(td.eq(3).text());
		$('#car_key').val(td.eq(4).text());
		
		
		/* if($('input:checkbox[name=chk_box]').prop("checked")){
			var tr = $(this).parent().parent().eq(0);
			
			console.log(tr);
			
			var td = tr.children();
			
			var car_index = td.eq(2).text();
			var car_name = td.eq(3).text();
			var car_key = td.eq(4).text();
			
			
			$('#car_index').val(td.eq(2).text());
			$('#car_name').val(td.eq(3).text());
			$('#car_key').val(td.eq(4).text());
		}else{
			$('#modify_form')[0].reset();
			$('#modify_form').find('input').val(''); 
		} */
	});
	
	
	$('#modify_btn').on('click', function(){
		$.ajax({
			type: 'POST',
			url: '/test/car/modifyCar',
			data: $('#modify_form').serialize(),
			dataType: 'text',
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			error: function(xhr, status, err){
				console.log(err);
			},
			success: function(rst){
				if(rst == 'success'){
					alert("수정되었습니다.");
					location.reload();
				}else{
					alert("수정에 실패했습니다.");
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
	
	<form id="modify_form">
		<table>
			<tr>
				<td>자동차 INDEX</td>
				<td><input type="text" name="car_index" id="car_index"></td>
			</tr>	
			<tr>
				<td>자동차 NAME</td>
				<td><input type="text" name="car_name" id="car_name"></td>
			</tr>
		</table>
		<input type="hidden" name="car_key" id="car_key">
	</form>
	<button type="button" id="modify_btn">등록</button>
	
</body>

</html>