function printTime(){
	var days = ["일", "월", "화", "수", "목", "금", "토"];
	var mydate = new Date();
	
	var yy = mydate.getFullYear();
	var mm = mydate.getMonth() + 1;
	var dd = mydate.getDate();
	var i = mydate.getDay();
	var day = days[i];
	var hh = mydate.getHours();
	var mi = mydate.getMinutes();
	var ss = mydate.getSeconds();
	
	var result = yy + "-" + mm + "-" + dd + "-" + day + "요일 " + hh + "-" + mi + "-" + ss;
	
	document.getElementById("timer").innerHTML = result;
}

function startTimer(){
	setInterval(printTime, 1000);
}