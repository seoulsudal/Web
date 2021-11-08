var days = ["일", "월", "화", "수", "목", "금", "토"];

var mydate = new Date();

mydate.setYear(2016);
mydate.setMonth(2);
mydate.setDate(24);
mydate.setHours(10);
mydate.setMinutes(16);
mydate.setSeconds(30);

var yy = mydate.getFullYear();
var mm = mydate.getMonth() + 1;
var dd = mydate.getDate();

var i = mydate.getDay();
var day = days[i];

var hh = mydate.getHours();
var mi = mydate.getMinutes();
var ss = mydate.getSeconds();

var result = yy + "-" + mm + "-" + dd + "-" + day + "요일 " + hh + "-" + mi + "-" + ss;

document.write("<h1>" + result + "</h1>");
