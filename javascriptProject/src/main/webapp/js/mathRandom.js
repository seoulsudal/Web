function random(n1, n2){
	return parseInt(Math.random() * (n2 - n1 + 1)) + n1;
}

var num = random(0, 9);
document.write("<H1>0~9 사이의 난수 : " + num + "</h1>");

var auth = "";
for(var i=0; i < 5; i++){
	auth += random(0, 9);
}
document.write("<h1>인증번호 : " +auth+ "</h1>");