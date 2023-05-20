<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<jsp:useBean id="user" class="information.User" scope="request"/>
<jsp:setProperty name="user" property="*"/>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/body-step1-form.css">
	</head>
	<script type="text/javascript">
	<!-- 유효성 검사 -->
	function check() {
		<!-- 폼과 값들 가져오기 -->
		var form = document.step1;
		var nameInput = form.name;
		var emailInput = form.email;
		
		<!-- 비어있는 경우 -->
		if(nameInput.value == "") {
			alert("이름을 입력해주세요.");
			nameInput.value.focus();
			return false;
		}
		if(emailInput.value == "") {
			alert("이메일을 입력해주세요.");
			emailInput.value.focus();
			return false;
		}
		
		<!-- 정규식을 만족하지 않는 경우 -->
		const name_pattern = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if(!nameInput.value.match(name_pattern)) {
	    	alert("이름을 정확히 입력해주세요.");
	    	nameInput.value = "";
	    	nameInput.value.focus();
	    	return false;
	    }
		
		var email_pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	    if(!emailInput.value.match(email_pattern)) {
	    	alert("이메일을 양식에 맞게 입력해주세요.");
	    	emailInput.value = "";
	    	emailInput.focus();
	    	return false;
	    }
	    
	    <!-- 모든 조건을 만족했을 때 -->
	  	alert("회원 정보가 없습니다. 회원가입을 계속 진행해주세요.");
		form.submit();
	}
	</script>
	<body>
		<br>
		<div class="body-step1-form">
			<!-- 타이틀 -->
			<h3 class="title1">회원가입여부 확인을 위해 이름, 이메일 주소를 입력해주세요.</h3>
			<hr class="black-hr">
			<!-- 폼 -->
			<form action="step2.jsp" name="step1" method="post">
				<!-- 이름 -->
				<div class="name-div">
					<span class="name">이름</span> 
					<div class="name-div-div">
						<input class="input-name" type="text" name="name" size="30">
						<p>※ 실명으로 가입하지 않을 경우 공공데이터 제공신청, 분쟁조정신청 등 일부 서비스에 대해 불이익이 있을 수 있습니다.</p>	
					</div>
				</div>
				<hr class="gray-hr">
				<!-- 이메일 -->
				<div class="email-div">
					<span class="email">이메일</span>
					<div class="email-div-div">
						<input class="input-email" type="text" name="email" placeholder="sample@sample.com" size="30">
						<p>※ 이메일 주소 입력은 영문키 상태에서 기재해주세요.</p>
					</div>
				</div>
				<hr class="gray-hr">
				<!-- 버튼 -->
				<div class="button-div">
					<input class="register-confirm" type="button" value="가입확인" onclick="check()" style='cursor:pointer;'>
				</div>	
			</form>
			<br>
		</div>		
	</body>
</html>