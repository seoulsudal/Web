var generalArray =[
	["김유신", "통일신라", "장군"],
	["이순신", "조선", "장군"]
];

for(var i = 0; i < generalArray.length; i++){
	for(var j = 0; j < generalArray[i].length; j ++){
		document.write("<h1>" + generalArray[i][j] + "</h1>");
	}
}