function sum(x, y){
	var z = x + y;
	return z;
}

function printResult(){
	var result = sum(10, 50);
	
	var mytag = document.getElementById("question")
	
	mytag.innerHTML = result;
}