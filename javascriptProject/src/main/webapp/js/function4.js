function f(x, y){
	var z = x + y;
	
	if(z < 10){
		return;
	}
	return z;
}

var a = f(2, 1);
var b = f(5, 7);
var c = f(10, 5);

document.write("<h1>" + a + "</h1>");
document.write("<h1>" + b + "</h1>");
document.write("<h1>" + c + "</h1>");