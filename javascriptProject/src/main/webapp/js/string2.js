var url = "http://www.naver.com/index.html"
document.write("<h1>문자열 : " + url + "</h1>");

var p1 = url.indexOf("://");
var p2 = url.indexOf("/", p1 + 3);
var domain = url.substring(p1 + 3, p2);
document.write("<h1>도메인 : " + domain + "</h1>");

var p3 = url.lastIndexOf("/");
var p4 = url.lastIndexOf(".");
var file = url.substr(p3 + 1, p4);
document.write("<h1>파일이름 : " + file + "</h1>");

var p5 = url.lastIndexOf(".");
var ext = url.substring(p5 + 1);
document.write("<h1>확장자 : " + ext + "</h1>");