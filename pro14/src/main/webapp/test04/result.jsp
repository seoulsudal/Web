<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
	<!-- empty 연산자를 이용해 ID 값이 비었는지 체크합니다. -->
	<c:if test="${empty param.userID}">
		아이디를 입력하세요<br>
		<a href="login.jsp">로그인창</a>
	</c:if>
	<!-- ID를 정상적으로 입력한 경우 로그인 메시지를 출력합니다. -->
	<c:if test="${not empty param.userID}">
		<h1>환영합니다. <c:out value="${param.userID}"/>님!!!</h1>
	</c:if>
</body>
</html>