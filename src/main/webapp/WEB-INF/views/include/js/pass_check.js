
$(function(){
	//모든 공백 체크 정규식
	var empJ = /\s/g; 
	// 비밀번호 정규식 숫자, 문자, 특수문자 중 2가지 포함(8~15자)로 입력
	var pwJ = /^(?=.*[a-zA-Z0-9])(?=.*[a-zA-Z!@#$%^&*])(?=.*[0-9!@#$%^&*]).{8,15}$/; 
	   //비밀번호 검사
	   $('#passwd').blur(function() {
	      if(pwJ.test($('#passwd').val())) {
	         console.log('true');
	         $('#pw_check').text('');
	      }else {
	         console.log('false');
	         $('#pw_check').text('숫자, 문자, 특수문자 중 2가지 포함(8~15자)로 입력해주세요.');
	         $('#pw_check').css('color', 'red');
	      }
	   });
	   
	   //패스워드 일치 확인
	   $('#re_passwd').blur(function() {
	      if($('#passwd').val() != $(this).val()) {
	         $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
	         $('#pw2_check').css('color', 'red');
	      }else {
	         $('#pw2_check').text('');
	      }
	   });
	   
	   //전송 클릭 시 유효성 검사
	   $('form').on('submit',function(){
	      var inval_Arr = new Array(1).fill(false);
	      //아이디 유효성 검사
	      if(pwJ.test($('#prw_pw').val())){
	         inval_Arr[0] = true;
	      }else {
	         inval_Arr[0] = false;
	         alert('이전 비밀번호를 확인하세요.');
	         $("#prw_pw").focus();
	         return false;
	      }
	      //비밀번호가 같은 경우 & 비밀번호 정규식
	      if(($('#passwd').val() == ($('#re_passwd').val()))&& pwJ.test($('#passwd').val())){
	         inval_Arr[1] = true;
	      }else {
	         inval_Arr[1] = false;
	         alert('새 비밀번호를 확인하세요.');
	         $("#passwd").focus();
	         return false;
	      }
	      var validAll = true;
	      for(var i=0; i<=inval_Arr.length; i++){
	         if(inval_Arr[i] == false){
	            validAll = false;
	         }
	      }
	      if(validAll == true){ // 유효성 모두 통과
	         alert('비밀번호를 변경합니다.');
	      }else {
	         alert('입력 정보를 다시 확인하세요.')
	      }
	   });
});
