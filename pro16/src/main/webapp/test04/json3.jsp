<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 테스트3</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function () {
		$("#checkJson").click(function () {
			var jsonStr = '{"name":"박지성", "age":25, "gender":"남자", "nickname":"날센돌이"}';
			// parse() 메서드로 배열을 구합니다.
			var jsonObj = JSON.parse(jsonStr);
			var output = "회원 정보<br>";
			output += "=======<br>";
			// 문자열에서 JSON 객체의 속성을 가져옵니다.
			output += "이름: " + jsonObj.name + "<br>";
			output += "나이: " + jsonObj.age + "<br>";
			output += "성별: " + jsonObj.gender + "<br>";
			output += "별명: " + jsonObj.nickname + "<br>";
			$("#output").html(output);
		});
	});
</script>
</head>
<body>
	<input type="button" value="출력" id="checkJson"/><br><br>
   	<div id="output"></div>
</body>
</html>