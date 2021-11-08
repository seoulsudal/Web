function doSubmit(){
	var frm = document.form1;
	
	if(!frm.user_name.value){
		alert("이름을 입력해 주세요.");
		frm.user_name.focus();
		return false;
	}
	
	if(!frm.gender[0].checked && !frm.gender[1].checked){
		alert("성별을 선택해 주세요.")
		frm.gender[0].focus();
		return false;
	}
	
	if(frm.job.selectedIndex < 1){
		alert("직업을 선택해 주세요.");
		frm.job.focus();
		return false;
	}
	
	var chk = false;
	for(var i = 0; i < frm.hobby.length; i++){
		if(frm.hobby[i].checked){
			chk = true;
			break;
		}
	}
	
	if(!chk){
		alert("취미를 선택해 주세요.");
		frm.hobby[0].focus();
		return false;
	}
	
	if(confirm("입력하신 내용이 맞습니까?")){
		frm.submit();
	}
}