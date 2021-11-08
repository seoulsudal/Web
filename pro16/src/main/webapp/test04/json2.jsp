<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 테스트1</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function () {
		$("#checkJson").click(function () {
			// 정수형 데이터를 가지는 이름이 age인 배열을 선언합니다.
			var jsonStr = '{"age": ["22", "33", "44"]}';
			// parse() 메서드로 배열을 구합니다.
			var jsonInfo = JSON.parse(jsonStr);
			var output = "회원 나이<br>";
			output += "=======<br>";
			// 배열 요소(나이)를 차례대로 출력합니다.
			for(var i in jsonInfo.age){
				output += jsonInfo.age[i] + "<br>";
			}
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