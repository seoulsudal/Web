var user_id = prompt("아이디를 입력하세요.", "");

if(user_id != ""){
	alert("안녕하세요." + user_id + "님");
	
	var result = confirm("정말 로그아웃 하시겠습니까?");
	
	if(result){
		alert("로그아웃 되셨습니다.")
	}
	else{
		alert("로그아웃이 취소 되었습니다.")
	}
}