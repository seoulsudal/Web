for(var i = 2; i <= 9; i++){
	document.write("<h1>" + i +"단</h1><ul>");
	
	for(var j = 1; j <= 9; j++){
		var k = i * j;
		var result = i + " x " + j + " = " + k;
		document.write("<li>" + result + "</li>"); 
	}
	document.write("</ul>");
}