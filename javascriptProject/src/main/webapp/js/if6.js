var point = 82;
// 임의로 비워둔 값
var grade = null;

if(90 < point && point <= 100){
	grade = "A";
}
else if(80 < point && point <= 90){
	grade = "B";
}
else if(70 < point && point <= 80){
	grade = "C";
}
else{
	grade = "F";
}

var msg = "<h1>" + grade + "학점 입니다.</h1>";
document.write(msg);