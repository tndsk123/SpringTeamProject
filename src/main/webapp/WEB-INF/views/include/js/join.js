
$(function(){
	//모든 공백 체크 정규식
	var empJ = /\s/g; 
	//아이디 정규식 4~16자의 소문자 영문, 숫자만 사용 가능
	var idJ = /^[a-z0-9_\-]{4,16}$/;
	// 비밀번호 정규식 숫자, 문자, 특수문자 중 2가지 포함(8~15자)로 입력
	var pwJ = /^(?=.*[a-zA-Z0-9])(?=.*[a-zA-Z!@#$%^&*])(?=.*[0-9!@#$%^&*]).{8,15}$/;
	// 이름 정규식 한글 2~10자 이내(특수기호, 공백 사용 불가), 영문 20자 이내로 입력(공백 포함)
	var nameJ = /^[가-힣]{2,10}$|[a-zA-Z]{1,10}\s[a-zA-Z]{1,10}$/;
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	var birthJ = false;
	//아이디 ajax
	 $("#user_id").blur(function(){
		 	if(idJ.test($('#user_id').val())) {
		 		console.log('true');
		 		var userid=$("#user_id").val();
				$.ajax({
					url : "http://localhost/test/user/id_chk?userid="+userid,
					type : "get",
					success : function(data){
							if(data == 1){
								$("#id_check").text("사용중인 아이디입니다.");
								$("#id_check").css("color", "red");
							}else if(data == 0 && userid != "") {					
								$('#id_check').text("사용 가능한 아이디 입니다");
								$('#id_check').css('color', 'blue');
							}else if(userid == ""){			
								$('#id_check').text('아이디를 입력해주세요 :)');
								$('#id_check').css('color', 'red');				
							} 
						}
					});

		 	}else {
		 		console.log('false');
		 		$('#id_check').text('4~16자의 소문자 영문, 숫자만 사용 가능합니다.');
		 		$('#id_check').css('color', 'red');
		 	}
			
	 // 생년월일 birthJ 유효성 검사
	   $('#user_birth').blur(function(){
	      var dateStr = $(this).val();
	      var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
	      var month = Number(dateStr.substr(5,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
	      var day = Number(dateStr.substr(8,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
	      var today = new Date(); // 날짜 변수 선언
	      var yearNow = today.getFullYear(); // 올해 연도 가져옴
	      if (dateStr.length <= 10) {
	         // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
	         if (year > yearNow || year < 1900 ){
	            $('#birth_check').text('생년월일을 확인해주세요.');
	            $('#birth_check').css('color', 'red');
	         }else if (month < 1 || month > 12) {
	            $('#birth_check').text('생년월일을 확인해주세요.');
	            $('#birth_check').css('color', 'red');
	         }else if (day < 1 || day > 31) {
	            $('#birth_check').text('생년월일을 확인해주세요.');
	            $('#birth_check').css('color', 'red');
	         }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
	            $('#birth_check').text('생년월일을 확인해주세요.');
	            $('#birth_check').css('color', 'red');
	         }else if (month == 2) {
	            var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
	            if (day>29 || (day==29 && !isleap)) {
	               $('#birth_check').text('생년월일을 확인해주세요.');
	               $('#birth_check').css('color', 'red');
	            }else {
	               $('#birth_check').text('');
	               birthJ = true;
	            }
	         }else {
	            $('#birth_check').text('');
	            birthJ = true;
	         }//end of if
	      }else {
	         //1.입력된 생년월일이 8자 초과할때 : auth:false
	         $('#birth_check').text('생년월일을 확인해주세요.');
	         $('#birth_check').css('color', 'red');
	      }
	   });
	   
	   //비밀번호 검사
	   $('#user_pw').blur(function() {
	      if(pwJ.test($('#user_pw').val())) {
	         console.log('true');
	         $('#pw_check').text('');
	      }else {
	         console.log('false');
	         $('#pw_check').text('숫자, 문자, 특수문자 중 2가지 포함(8~15자)로 입력해주세요.');
	         $('#pw_check').css('color', 'red');
	      }
	   });
	   
	   //패스워드 일치 확인
	   $('#user_pw2').blur(function() {
	      if($('#user_pw').val() != $(this).val()) {
	         $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
	         $('#pw2_check').css('color', 'red');
	      }else {
	         $('#pw2_check').text('');
	      }
	   });
	   
	   //이름에 특수문자 들어가지 않도록 설정
	   $("#user_name").blur(function() {
	      if(nameJ.test($(this).val())) {
	         console.log(nameJ.test($(this).val()));
	         $("#name_check").text('');
	      }else {
	         $('#name_check').text('한글 2~10자 이내(특수기호, 공백 사용 불가), 영문 20자 이내로 입력해주세요.(공백 포함)');
	         $('#name_check').css('color', 'red');
	      }
	   });
	   
	   //전송 클릭 시 유효성 검사
	   $('form').on('submit',function(){
	      var inval_Arr = new Array(6).fill(false);
	      //아이디 유효성 검사
	      if(idJ.test($('#user_id').val())){
	         inval_Arr[0] = true;
	      }else {
	         inval_Arr[0] = false;
	         alert('아이디를 확인하세요.');
	         $("#user_id").focus();
	         return false;
	      }
	      //비밀번호가 같은 경우 & 비밀번호 정규식
	      if(($('#user_pw').val() == ($('#user_pw2').val()))&& pwJ.test($('#user_pw').val())){
	         inval_Arr[1] = true;
	      }else {
	         inval_Arr[1] = false;
	         alert('비밀번호를 확인하세요.');
	         $("#user_pw").focus();
	         return false;
	      }
	      
	      //이름 정규식
	      if(nameJ.test($('#user_name').val())){
	         inval_Arr[2] = true;
	      }else {
	         inval_Arr[2] = false;
	         alert('이름을 확인하세요.');
	         $("#user_name").focus();
	         return false;
	      }
	  
	      //생년월일 정규식
	      if(birthJ) {
	         inval_Arr[3] = true;
	      }else {
	         inval_Arr[3] = false;
	         alert('생년월일을 확인하세요.');
	         $("#user_birth").focus();
	         return false;
	      }
	      //이메일 정규식
	      if(mailJ.test($('#user_email').val())){
	         inval_Arr[4] = true;
	      }else {
	         inval_Arr[4] = false;
	         alert('이메일을 확인하세요.');
	         $("#user_email").focus();
	         return false;
	      }
	      //휴대폰번호 정규식
	      if(phoneJ.test($('#user_phone').val())) {
	         console.log(phoneJ.test($('#user_phone').val()));
	         inval_Arr[5] = true;
	      }else {
	         inval_Arr[5] = false;
	         alert('휴대폰 번호를 확인하세요.');
	         $("#user_phone").focus();
	         return false;
	      }
	      //주소확인
	      if($('#user_address').val() == '' && $('#user_detailaddress').val() == ''){
	         inval_Arr[6] = false;
	         alert('주소를 확인하세요.');
	         $("#address").focus();
	         return false;
	      }else
	         inval_Arr[6] = true;
	      var validAll = true;
	      for(var i=0; i<=inval_Arr.length; i++){
	         if(inval_Arr[i] == false){
	            validAll = false;
	         }
	      }
	      if(validAll == true){ // 유효성 모두 통과
	         alert('회원가입 성공.');
	      }else {
	         alert('입력 정보를 다시 확인하세요.')
	      }
	   });
});
});
function daumZipCode() {
	 new daum.Postcode({
	     oncomplete: function(data) {
	// 팝업에서 검색결과 항목을 클릭했을때 
	//실행할 코드를 작성하는 부분.

	         // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 
	//이를 참고하여 분기 한다.
	         var fullAddr = ''; // 최종 주소 변수
	         var extraAddr = ''; // 조합형 주소 변수

	         // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 
	         //가져온다.
	// 사용자가 도로명 주소를 선택했을 경우         
	         if (data.userSelectedType === 'R') { 
	             fullAddr = data.roadAddress;

	         } else { // 사용자가 지번 주소를 선택했을 경우(J)
	             fullAddr = data.jibunAddress;
	         }
	      // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	         if(data.userSelectedType === 'R'){
	             //법정동명이 있을 경우 추가한다.
	             if(data.bname !== ''){
	                 extraAddr += data.bname;
	             }
	// 건물명이 있을 경우 추가한다.
	             if(data.buildingName !== ''){
	                 extraAddr += (extraAddr !== '' ? ', ' 
	+ data.buildingName : data.buildingName);
	             }
	// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	             fullAddr += (extraAddr !== '' ? 
	            		 ' ('+ extraAddr +')' : '');
	         }

	         // 우편번호와 주소 정보를 해당 필드에 넣는다.
	         document.getElementById('user_address').value 
	         	= data.zonecode; //5자리 새우편번호 사용
	         document.getElementById('user_detailaddress').value 
	         	= fullAddr;

	         // 커서를 상세주소 필드로 이동한다.
	         document.getElementById('address3').focus();
	     }
	 }).open();
}





