function doPrint(num){
	var msg = "doPrint가 " + num + "회 실행되었습니다."
	alert(msg);
	document.getElementById("myid").innerHTML = msg;
}