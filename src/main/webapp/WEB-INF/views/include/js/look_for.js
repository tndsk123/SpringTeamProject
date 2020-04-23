$(function(){
	var nameJ = /^[가-힣]{2,10}$|[a-zA-Z]{1,10}\s[a-zA-Z]{1,10}$/;
	var idJ = /^[a-z0-9_\-]{4,16}$/;
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var userid=$("#userid").val();
	var username=$("#username").val();
	var mail=$("#username").val();
	var mail2=$("#mail2").val();
	$("#btnLook_id").click(function(){
		var inval_Arr = new Array(1).fill(false);
		if($("#username").val() == '' || nameJ.test($("#username").val())){
			inval_Arr[0] = false;
	    alert('아이디를 확인하세요.');
	    $("#username").focus();
	    return false;
		}else{
			inval_Arr[0] = true;
		}
		if(mail == '' || mailJ.test(mail)){
			inval_Arr[1] = false;
		  alert('이메일을 확인하세요.');
		  $("#mail").focus();
		  return false;
		}else{
			inval_Arr[1] = true;
		}
		var validAll = true;
	  for(var i=0; i<=inval_Arr.length; i++){
	      if(inval_Arr[i] == false){
	            validAll = false;
	      }
	  }
	  if(validAll == false){ // 유효성 모두 통과
		  alert('입력 정보를 다시 확인하세요.');
	  }
	});
	
	$("#btnLook_pw").click(function(){
		var inval_Arr = new Array(1).fill(false);
		if(userid == '' || idJ.test(userid)){
			inval_Arr[0] = false;
	    alert('아이디를 확인하세요.');
	    $("#userid").focus();
	    return false;
		}else{
			inval_Arr[0] = true;
		}
		if(mail2 == '' || mailJ.test(mail2)){
			inval_Arr[1] = false;
		  alert('이메일을 확인하세요.');
		  $("#mail2").focus();
		  return false;
		}else{
			inval_Arr[1] = true;
		}
		var validAll = true;
	  for(var i=0; i<=inval_Arr.length; i++){
	      if(inval_Arr[i] == false){
	            validAll = false;
	      }
	  }
	  if(validAll == false){ // 유효성 모두 통과
		  alert('입력 정보를 다시 확인하세요.');
	  }
	});
	$("#username").blur(function() {
	      if(nameJ.test($(this).val())) {
	         console.log(nameJ.test($(this).val()));
	         $("#name_check").text('');
	      }else {
	         $('#name_check').text('한글 2~10자 이내(특수기호, 공백 사용 불가), 영문 20자 이내로 입력해주세요.(공백 포함)');
	         $('#name_check').css('color', 'red');
	      }
	 });
	$("#userid").blur(function() {
	      if(idJ.test($(this).val())) {
	         console.log(nameJ.test($(this).val()));
	         $("#id_check").text('');
	      }else {
	         $('#id_check').text('한글 2~10자 이내(특수기호, 공백 사용 불가), 영문 20자 이내로 입력해주세요.(공백 포함)');
	         $('#id_check').css('color', 'red');
	      }
	 });
	$("#email").blur(function() {
	      if(mailJ.test($(this).val())) {
	         console.log(nameJ.test($(this).val()));
	         $("#email_check").text('');
	      }else {
	         $('#email_check').text('이메일 형식을 확인해주세요');
	         $('#email_check').css('color', 'red');
	      }
	 });
	$("#email2").blur(function() {
	      if(mailJ.test($(this).val())) {
	         console.log(nameJ.test($(this).val()));
	         $("#email_check").text('');
	      }else {
	         $('#email_check').text('이메일 형식을 확인해주세요');
	         $('#email_check').css('color', 'red');
	      }
	 });
	 
});