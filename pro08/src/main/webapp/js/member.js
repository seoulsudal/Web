function fn_sendMember(){
	var frmMember = document.frmMember;
	var id = frmMember.id.value;
	var pwd = frmMember.pwd.value;
	var name = frmMember.name.value;
	var email = frmMember.email.value;
	
	if(id.length == 0 || id == ""){
		alert("아이디는 필수 입니다.");
	} else if(pwd.length == 0 || pwd == ""){
		alert("비밀번호는 필수 입니다.")
	} else if(name.length == 0 || name == ""){
		alert("이름은 필수 입니다.")
	} else if(email.length == 0 || email == ""){
		alert("이메일은 필수 입니다.")
	} else{
		frmMember.method = "post";
		frmMember.action = "member";
		frmMember.submit();
	}
}