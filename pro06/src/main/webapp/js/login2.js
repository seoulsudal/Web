function fn_validate(){
	var frmLogin = document.frmLogin;
	var user_id = frmLogin.user_id.value;
	var user_pw = frmLogin.user_pw.value;
	
	if((user_id.length == 0 || user_id == "") || (user_pw.length == 0 || user_pw == "")){
		alert("아이디와 비밀번호는 필수입니다.")
	}
	else{
		frmLogin.method = "post";
		frmLogin.action = "login5";
		frmLogin.submit();
	}
}