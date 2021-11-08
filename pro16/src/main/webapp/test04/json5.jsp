<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 테스트5</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function () {
		$("#checkJson").click(function () {
			// 전송할 회원 정보를 JSON 형식으로 만듭니다.
			var _jsonInfo = '{"name":"박지성", "age":25, "gender":"남자", "nickname":"날센돌이"}';
			$.ajax({
				type:"post",
				async:false,
				url:"${contextPath}/json",
				// 매개변수 이름 jsonInfo로 JSON 데이터를 ajax로 전송합니다.
				data: {jsonInfo: _jsonInfo},
				success:function (data,textStatus){
				},
				error:function (data, textStatus){
					alert("에러가 발생했습니다.");
				},
				complete:function (data, textStatus){
					alert("작업을 실행했습니다.");
				}
			});
		});
	});
</script>
</head>
<body>
	<input type="button" value="출력" id="checkJson"/><br><br>
   	<div id="output"></div>
</body>
</html>