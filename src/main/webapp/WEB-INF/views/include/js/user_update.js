
$(function(){
	//모든 공백 체크 정규식
	var empJ = /\s/g; 
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	   
	   //전송 클릭 시 유효성 검사
	   $('#form1').on('submit',function(){
	      var inval_Arr = new Array(2).fill(false);
	      //이메일 정규식
	      if(mailJ.test($('#email').val())){
	         inval_Arr[0] = true;
	      }else {
	         inval_Arr[0] = false;
	         alert('이메일을 확인하세요.');
	         $("#email").focus();
	         return false;
	      }
	      //휴대폰번호 정규식
	      if(phoneJ.test($('#hp').val())) {
	         console.log(phoneJ.test($('#hp').val()));
	         inval_Arr[1] = true;
	      }else {
	         inval_Arr[1] = false;
	         alert('휴대폰 번호를 확인하세요.');
	         $("#hp").focus();
	         return false;
	      }
	      //주소확인
	      if($('#address1').val() == '' && $('#address2').val() == '' && $('#address3').val() == ''){
	         inval_Arr[2] = false;
	         alert('주소를 확인하세요.');
	         $("#address3").focus();
	         return false;
	      }else
	         inval_Arr[2] = true;
	      var validAll = true;
	      for(var i=0; i<=inval_Arr.length; i++){
	         if(inval_Arr[i] == false){
	            validAll = false;
	         }
	      }
	      if(validAll == true){ // 유효성 모두 통과
	         alert('정보를 수정합니다.');
	      }else {
	         alert('입력 정보를 다시 확인하세요.')
	      }
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
	         document.getElementById('address1').value 
	         	= data.zonecode; //5자리 새우편번호 사용
	         document.getElementById('address2').value 
	         	= fullAddr;

	         // 커서를 상세주소 필드로 이동한다.
	         document.getElementById('address3').focus();
	     }
	 }).open();
}





