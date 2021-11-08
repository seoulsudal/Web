function sum(x, y){
	var z = x + y;
	return z;
}

function printResult(x, y){
	var result = sum(x, y)
	document.write("<h1>" + result + "</h1>")
}

printResult(7,10);