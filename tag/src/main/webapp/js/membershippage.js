function CheckForm(f) {

	// 숫자 0~9
	var r1 = /\d/;
	// 영문자와 숫자를 제외한 모든 문자
	var r2 = /\W/;
	// 각종 특수문자
	var r3 = "~!#$%^&*()_+=|\/\"?><,.{}[];:'";
/*
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
		f.name.value = "";
		f.name.focus();
		return false;
	};

	// 생일
	ubirth = f.birthday.value;

	if (ubirth.replace(/\s/g, "") == "") {
		alert("생일을 입력하세요.");
		f.birthday.value = "";
		f.birthday.focus();
		return false
	};

	// 음/양력
	ucal = f.calendar.value;

	if (ucal.replace(/\s/g, "") == "") {
		alert("음/양력을 입력하세요.");
		f.calendar.value = "";
		f.calendar.focus();
		return false;
	};

	// 아이디
	uid = f.id.value;

	if (uid.replace(/\s/g, "") == "" || uid.search(r2) >= 0) {
		alert("아이디를 입력하지 않았거나 아이디에 영문자와 숫자 이외의 값을 넣으셨습니다. 아이디를 6~10자 입력해주세요.");
		f.id.value = "";
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

	// 이메일
	uemail = f.email.value;

	if (uemail.replace(/\s/g, "") == "") {
		alert("이메일을 입력해주세요.")
		f.email.focus();
		return false;
	}

	// 자택번호
	unum = f.num.value;
	unn = f.nn.value;
	var n1 = /\d{4}/g;

	if (unn.replace(/\s/g, "") == "") {
		alert("전화번호 앞자리를 선택해주세요.");
		f.nn.value = "";
		f.nn.focus();
		return false;
	}

	if (unum.replace(/\s/g, "") == "") {
		alert("전화번호를 4자리씩 숫자만 입력해주세요.");
		f.num.value = "";
		f.num.focus();
		return false;
	}

	// 핸드폰
	uph = f.ph.value;
	uphn = f.phn.value;

	if (uphn.replace(/\s/g, "") == "") {
		alert("핸드폰번호 앞자리를 선택해주세요.");
		f.phn.value = "";
		f.phn.focus();
		return false;
	}

	if (uph.replace(/\s/g, "") == "") {
		alert("핸드폰번호를 4자리씩 숫자만 입력해주세요.");
		f.ph.value = "";
		f.ph.focus();
		return false;
	}
*/
	// 주소
	uadd = f.address.value;

	if (uadd.replace(/\s/g, "") == "" || uadd.search(r2) >= 0) {
		alert("주소를 문자와 숫자로 입력해주세요.");
		f.address.value = "";
		f.address.focus();
		return false;
	}

	// 직업
	ujob = f.job.value;
	
	if(ujob.selectedIndex < 1){
		alert("직업을 선택해 주세요.");
		f.job.focus();
		return false;
	}

	// 가입경로
	uroot = f.root.value;

	if (uroot.replace(/\s/g, "") == "") {
		alert("가입경로를 입력해주세요.");
		f.root.value = "";
		f.root.focus();
		return false;
	}
}