document.write("<table width='80%' border='1' style='margin: auto; text-align: center'>")

for(var i = 0; i < 6; i++){
	document.write("<tr>")
	
	for(var j = 0; j < 7; j++){
		var txt = "(" + i + ", " + j + ")";
		document.write("<td>" + txt + "</td>");
	}
	document.write("</tr>");
}
document.write("</table>");