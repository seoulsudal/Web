function CheckForm(f){
	var r1 = /\W/;
	
	id = f.user_id.value;
	
	if(id.replace(/\s/g, "") == "" || id.search(r1) >= 0){
		alert("아이디가 입력되지 않았거나 아이디를 영문자와 숫자로 구성하지 않았습니다. 다시 입력해주세요.");
		f.user_id.value = "";
		f.user_id.focus();
		return false;
	}
	
	pw = f.user_pw.value;
	
	if(pw.replace(/\s/g, "") == ""){
		alert("비밀번호가 입력되지 않았습니다. 다시 입력해주세요.")
		f.user_pw.value = "";
		f.user_pw.focus();
		return false;
	}
}