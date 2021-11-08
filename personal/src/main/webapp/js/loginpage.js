function CheckForm(f){
	
	var r1 = /\W/;
	
	id = f.user_id.value;
	pwd = f.user_pwd.value;
	
	// 아이디 글자 타입 체크
	if(id.replace(/\s/g, "") == "" || id.search(r1) >= 0 ){
		alert("아이디는 문자와 숫자만 입력하셔야 합니다. 다시 입력해주세요.");
		f.user_id.value = "";
		f.user_id.focus();
		return false;
	}

	// 아이디 글자 수 체크
	if(id.length < 6){
		alert("아이디는 6 ~ 10글자로 입력하셔야 합니다. 다시 입력해주세요.")
		f.user_id.value = "";
		f.user_id.focus();
		return false;
	}
	
	// 비밀번호 글자 수 체크
	if(pwd.length < 8){
		alert("비밀번호는 8 ~ 12글자로 입력하셔야 합니다. 다시 입력해주세요.")
		f.user_pw.value = "";
		f.user_pw.focus();
		return false;
	}
}