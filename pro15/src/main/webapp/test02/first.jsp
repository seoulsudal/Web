<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다운로드</title>
</head>
<body>
	<form action="result.jsp" method="post">
		<!-- hidden 2줄 -> 다운로드할 파일 이름을 매개변수로 전달합니다. -->
		<input type="hidden" name="param1" value="1.jpg"><br>
		<input type="hidden" name="param2" value="2.jpg"><br>
		<input type="submit" value="이미지 다운로드">
	</form>
</body>
</html>