function sum(x, y){
	var z = x + y;
	return z;
}

function showResult(){
	var result = sum(10, 50);
	var red_result = "<font color = 'red'>" + result + "</font>";
	document.getElementById("question").innerHTML = red_result;
}

function hideResult(){
	document.getElementById("question").innerHTML = "?";
}