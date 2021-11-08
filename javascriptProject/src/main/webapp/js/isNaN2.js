var v1 = "가나다라";
var v2 = "123456";

var is_num1 = !isNaN(v1);
var is_num2 = !isNaN(v2);

if(is_num1){
	document.write("<h1>" + v1 + "은(는) 숫자 입니다.</h1>");
}
else{
	document.write("<h1>" + v1 + "은(는) 숫자가 아닙니다.</h1>");
}

if(is_num2){
	document.write("<h1>" + v2 + "은(는) 숫자 입니다.</h1>");
}
else{
	document.write("<h1>" + v2 + "은(는) 숫자가 아닙니다.</h1>");
}