var url = "http://www.naver.com/";
document.write("<p>문자열 : " + url + "</P>");

var len = url.length;
document.write("<p>문자열의 길이 : " + len + "</P>");

var str2nd = url.charAt(2);
document.write("<p>두번째 글자 : " + str2nd + "</P>");

var position1 = url.indexOf("/");
document.write("<p>'/'가 처음 나타나는 위치 : " + position1 + "</P>");

var position2 = url.indexOf("/", position1+1);
document.write("<p>'/'가 두번째로 나타나는 위치 : " + position2 + "</P>");

var position3 = url.lastIndexOf("/");
document.write("<p>'/'가 마지막으로 나타나는 위치 : " + position3 + "</P>");

var substring1 = url.substring(0, 5);
document.write("<p>문자열 자르기 : " + substring1 + "</P>");

var substring2 = url.substring(7);
document.write("<p>문자열 자르기 : " + substring2 + "</P>");

var up = url.toUpperCase();
document.write("<p>모든 글자의 대문자 변환 : " + up + "</P>");

var low = url.toLowerCase();
document.write("<p>모든 글자의 대문자 변환 : " + low + "</P>");