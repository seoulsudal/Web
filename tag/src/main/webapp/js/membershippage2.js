function CheckForm(f) {

	// 숫자 0~9
	var r1 = /\d/;
	// 영문자와 숫자를 제외한 모든 문자
	var r2 = /\W/;
	// 각종 특수문자
	var r3 = "~!#$%^&*()_+=|\/\"?><,.{}[];:'";
	// 숫자를 제외한 값
	var r4 = /\D/;

	// 이름
	uname = f.name.value;

	b = false;

	if (uname.replace(/\s/g, "") == "") {
		alert("이름을 입력하세요.");
		f.name.focus();
		return false;
	};

	for (i = 0; i < uname.length; i++) {
		var c = uname.charAt(i)

		if (r3.search(c) >= 0 || c.search(r1) >= 0) {
			b = true;
			break;
		};
	};

	if (b) {
		alert("이름은 문자만 입력하셔야 합니다.");
		f.name.focus();
		return false;
	};

	// 생일
	ubirth = f.birthday.value;

	if (ubirth.replace(/\s/g, "") == "") {
		alert("생일을 입력하세요.");
		f.birthday.focus();
		return false
	};

	// 음/양력
	if(!f.calendar[0].checked && !f.calendar[1].checked){
		alert("음/양력을 선택해 주세요.")
		f.calendar[0].focus();
		return false;
	}

	// 아이디
	uid = f.id.value;

	if (uid.replace(/\s/g, "") == "" || uid.search(r2) >= 0) {
		alert("아이디를 입력하지 않았거나 아이디에 영문자와 숫자 이외의 값을 넣으셨습니다. 아이디를 6~10자 입력해주세요.");
		f.id.focus();
		return false;
	}

	// 비밀번호
	upw = f.pw.value;

	if (upw.replace(/\s/g, "") == "") {
		alert("비밀번호를 8~12자 입력하세요.");
		f.pw.focus();
		return false;
	};

	// 비밀번호 확인
	urepw = f.repw.value;

	if (urepw.replace(/\s/g, "") == "") {
		alert("비밀번호 확인을 8~12자 입력하세요.");
		f.repw.focus();
		return false;
	};

    if (!(upw === urepw)) {
		alert("비밀번호와 비밀번호 확인이 다릅니다. 확인해주세요.")
		f.repw.focus();
		return false;
	}

	// 이메일
	uemail = f.email.value;

	if (uemail.replace(/\s/g, "") == "") {
		alert("이메일을 입력해주세요.")
		f.email.focus();
		return false;
	}

	// 자택번호
	unum1 = f.num1.value;
	unum2 = f.num2.value;

	if (f.nn.selectedIndex < 1) {
		alert("전화번호 앞자리를 선택해주세요.");
		f.nn.focus();
		return false;
	}

	if (unum1.replace(/\s/g, "") == "" || unum1.search(r4) >= 0) {
		alert("전화번호를 숫자로 입력해주세요.");
		f.unum1.focus();
		return false;
	}
	
	if (unum2.replace(/\s/g, "") == "" || unum2.search(r4) >= 0) {
		alert("전화번호를 숫자로 입력해주세요.");
		f.unum1.focus();
		return false;
	}

	// 핸드폰
	uph1 = f.ph1.value;
	uph2 = f.ph2.value;

	if(f.phn.selectedIndex < 1){
		alert("핸드폰번호 앞자리를 선택해주세요.");
		f.phn.focus();
		return false;
	}
	
	if (uph1.replace(/\s/g, "") == "" || uph1.search(r4) >= 0) {
		alert("핸드폰번호를 숫자로 입력해주세요.");
		f.uph1.focus();
		return false;
	}
	
	if (uph2.replace(/\s/g, "") == "" || uph2.search(r4) >= 0) {
		alert("핸드폰번호를 숫자로 입력해주세요.");
		f.uph1.focus();
		return false;
	}	

	// 주소
	uadd1 = f.address1.value;
	uadd2 = f.address2.value;

	if (uadd1.replace(/\s/g, "") == "" || uadd1.search(r4) >= 0) {
		alert("번지를 숫자로 입력해주세요.");
		f.address.focus();
		return false;
	}
	
	if (uadd2.replace(/\s/g, "") == "" || uadd2.search(r4) >= 0) {
		alert("번지를 숫자로 입력해주세요.");
		f.address.focus();
		return false;
	}

	// 직업
	if(f.job.selectedIndex < 1){
		alert("직업을 선택해 주세요.");
		f.job.focus();
		return false;
	}

	// 가입경로
	if(!f.root[0].checked && !f.root[1].checked && !f.root[2].checked && !f.root[3].checked && !f.root[4].checked && !f.root[5].checked && !f.root[6].checked && !f.root[7].checked && !f.root[8].checked){
		alert("가입경로를 입력해주세요.")
		f.root[0].focus();
		return false;
	}

}