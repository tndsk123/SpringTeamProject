<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<script type="text/javascript">
function join(){
	 if($("input:checkbox[id='agree1']").is(":checked") ==false){
		 Swal.fire({
			  icon: 'error',
			  title: '이용약관 동의를 하지 않으셨습니다.',
			});
		 docudment.getElementById("agree1").focus();
	 }
	 if($("input:checkbox[id='agree2']").is(":checked") ==false){
		 Swal.fire({
			  icon: 'error',
			  title: '개인정보 수집약관 동의를 하지 않으셨습니다.',
			});
		 docudment.getElementById("agree2").focus();
	 }
	 location.href='${path}/user/join2.do';	
}
</script>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
    <div class="container">
       <div class="row">
          <div class="col-md-12 mb-0"><a href="${path}/user/join.do">회원가입</a> <span class="mx-2 mb-0">/</span><strong class="text-black">이용약관</strong></div>
       </div>
    </div>
   </div>
   <div class="container">
   	 <div class="row mb-3">
   	 		<div class="col-md-12 mb-3">
       		<font color="#f67001" size=4>01</font> <font size=3>이용약관</font>
    		</div>
    		<div class="col-md-12 mb-1">
    			<%@ include file="../include/util/join1.jsp"%>
    			<input type="checkbox" id="agree1">이용약관에 동의합니다.
    		</div>
   	 </div>
   	 <div class="row">
   	 		<div class="col-md-12 mb-3">
       		<font color="#f67001" size=4>02</font> <font size=3>개인정보 수집 및 이용에 대한 안내</font>
    		</div>
    		<div class="col-md-12 mb-1">
    			<%@ include file="../include/util/join2.jsp"%>
    			<input type="checkbox" id="agree2">이용약관에 동의합니다.
    		</div>
   	 </div>
   	 <div class="text-center">
   	 	 <button type="button" class="btn btn-primary" onclick="join()">약 관 동 의</button>
  		 <button type="button" class="btn btn-danger ml-4" onclick="location.href='${path}'">취 소 하 기</button>
   	 </div>
   </div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>