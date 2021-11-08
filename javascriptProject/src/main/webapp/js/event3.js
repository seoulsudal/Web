function insertQuestion(){
	var q = prompt("사칙연산의 수식을 입력하세요.(예: 100 + 50)", "");
	
	var answer = eval(q);
	
	var result = q + " = " + answer;
	
	document.getElementById("question").innerHTML = result;
}