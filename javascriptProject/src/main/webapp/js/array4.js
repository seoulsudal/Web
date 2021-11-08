var str = "김유신, 통일신라, 장군";

var data = str.split(",");

for(var i = 0; i < data.length; i++){
	document.write("<h1>" + data[i] + "</h1>");
}