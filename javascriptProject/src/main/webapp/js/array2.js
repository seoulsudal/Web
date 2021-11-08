var numArray = [];

for(var i = 0; i < 10; i++){
	numArray[i] = i;
}

document.write("배열의 길이 " + numArray.length);

for(var i = 0; i < numArray.length; i++){
	document.write("<p>" + numArray[i] + "</p>");
}