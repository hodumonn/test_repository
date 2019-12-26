/*아이디 중복확인*/
function chkId(){
	
	if($('#id').val() == '' || $('#id').val() == null){
		alert("아이디를 입력해주세요.");
		$('#id').focus();
		return false;
	}
	
	$.ajax({
		type:"POST",
		url:"/test/chkId",
		data: {
			"member_id" : $('#id').val()
		},
		success:function(data){
			 if($.trim(data.result_code) === "NO"){
				alert("중복된 아이디입니다.");
				$('#chkId').val(0);
				$('#id').focus();
				return 0;
			}else if($.trim(data.result_code) === "YES"){
				$('#chkId').val(1);
				alert("사용가능한 아이디입니다.");
				return 1;
			}
		}
	});
}

/*입력폼 확인*/
function chkForm(){
	
	chkId();
	
	if($('#id').val() == '' || $('#id').val() == null){
		alert("아이디를 입력해주세요.");
		$('#id').focus();
		return false;
	}else if($('#chkId').val() == 0){
		alert("아이디를 중복확인을 해주세요.");
		return false;
	}
	
	/*var check_val = chkId();
	alert(check_val);
	
	return false;*/
}


$(document).ready(function(){
	/*var company = function(){
		return "autoit";
	}
	
	alert(company());*/
	
	/*function plus(a, b, callback) {
	  var sum = a + b;
	  callback(sum);
	}

	function print(result) {  // 콜백 함수로 사용할 함수 정의
	  console.log(result);
	}                         

	plus(1, 2, print);*/
	
	
	
});
