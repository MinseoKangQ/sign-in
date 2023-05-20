<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<jsp:useBean id="user" class="information.User" scope="request"/>
<jsp:setProperty name="user" property="*"/>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/body-step2-form.css">
	</head>
	<script type="text/javascript">
	<!-- 유효성 검사 -->
	function check() {
		<!-- 폼과 값들 가져오기 -->
		var form = document.step2;
		var idInput = form.id;
		var pwInput = form.pw;
		var pwConfirmInput = form.pw_confirm;
		var phoneNumInput = form.phone_num;
		var personPhoneNumInput = form.person_phone_num;
		
		<!-- 비어있는 경우 -->
		if(idInput.value == "") {
			alert("이름을 입력해주세요.");
			idInput.value.focus();
			return false;
		}
		
		if(pwInput.value == "") {
			alert("비밀번호를 입력해주세요.");
			pwInput.value.focus();
			return false;
		}
		
		if(personPhoneNumInput.value == "") {
			alert("휴대전화번호를 입력해주세요.");
			personPhoneNumInput.value.focus();
			return false;
		}
		
		<!-- 비밀번호가 일치하지 않는 경우 -->
		if(pwInput.value != pwConfirmInput.value) {
			alert("비밀번호를 정확히 입력해주세요.");
			pwConfirmInput.value = "";
			pwConfirmInput.value.focus();
	    	return false;
		}
		
		<!-- 정규식을 만족하지 않는 경우 -->
		const id_pattern = /^[a-z0-9]{4,20}$/;
		const pw_pattern = /^(?!.*(.)(?:\1+)).*$/;
		const phone_pattern = /^\d{2,3}-\d{3,4}-\d{4}$/;
		
		if(!idInput.value.match(id_pattern)) {
	    	alert("아이디를 양식에 맞게 정확히 입력해주세요.");
	    	idInput.value = "";
	    	idInput.value.focus();
	    	return false;
	    }
		
		if(!pwInput.value.match(pw_pattern)) {
	    	alert("비밀번호를 양식에 맞게 정확히 입력해주세요.");
	    	pwInput.value = "";
	    	pwInput.value.focus();
	    	return false;
	    }
		
		if(!personPhoneNumInput.value.match(phone_pattern)) {
	    	alert("휴대전화번호를 정확히 입력해주세요.");
	    	personPhoneNumInput.value = "";
	    	personPhoneNumInput.value.focus();
	    	return false;
	    }
		
		<!-- 모든 조건을 만족했을 때 -->
		alert("회원가입이 완료되었습니다!");
		form.submit();
	}
	</script>
	<body>
		<br>
		<div class="body-step2-form">
			<form action="result.jsp" name="step2" method="get">
				<h3 class="title2">기본정보 입력</h3>
				<hr class="black-hr">
				<!-- 아이디 -->
				<div class="id-div">
					<span class="id"><span class="star">* </span>아이디</span> 
					<div class="id-div-div">
						<input class="input-id" type="text" name="id" size="30">
						<p>4자~20자 이내 영문 소문자, 숫자만 가능합니다.</p>	
					</div>
				</div>
				<hr class="gray-hr">
				<!-- 비밀번호 -->
				<div class="pw-div">
					<span class="pw"><span class="star">* </span>비밀번호</span>
					<div class="pw-div-div">
						<input class="input-pw" type="password" name="pw" size="30">
						<p>연속문자 사용불가</p>
					</div>
				</div>
				<hr class="gray-hr">
				<div class="pw-confirm-div">
					<span class="pw-confirm"><span class="star">* </span>비밀번호 확인</span>
					<div class="pw-confirm-div-div">
						<input class="input-pw-confirm" type="password" name="pw_confirm" size="30">
					</div>
				</div>
				<hr class="gray-hr">
				<br>
				<h3 class="title2">개인정보입력</h3>
				<hr class="black-hr">
				<!-- 이름 -->
				<div class="name-div">
					<span class="name"><span class="star">* </span>이름</span> 
					<div class="name-div-div">
						<input class="input-name" type="text" name="name" size="30" value="<jsp:getProperty property="name" name="user"/>" readonly>
					</div>
				</div>
				<hr class="gray-hr">
				<!-- 이메일 -->
				<div class="email-div">
					<span class="email"><span class="star">* </span>이메일</span>
					<div class="email-div-div">
						<input class="input-email" type="text" name="email" size="30" value="<jsp:getProperty property="email" name="user"/>" readonly>
						<p>비밀번호 초기화 메일 수신 등에 반드시 필요한 정보이므로 정확히 이메일 주소를 입력하세요.</p>
					</div>
				</div>
				<hr class="gray-hr">
				<!-- 전화번호 -->
				<div class="phone-num-div">
					<span class="phone-num">전화번호</span> 
					<div class="phone-num-div-div">
						<input class="input-phone-num" type="text" name="phone_num" size="30">
					</div>
				</div>
				<hr class="gray-hr">
				<!-- 휴대전화번호 -->
				<div class="personal-phone-num-div">
					<span class="personal-phone-num"><span class="star">* </span>휴대전화번호</span>
					<div class="personal-phone-num-div-div">
						<input class="input-personal-phone-num" type="text" name="person_phone_num" size="30">
					</div>
				</div>
				<!-- 회원가입 버튼 -->
				<div class="button-div">
					<input class="register-confirm" type="button" value="가입확인" onclick="check()" style='cursor:pointer;'>
				</div>
			</form>
			<br>
		</div>
	</body>
</html>