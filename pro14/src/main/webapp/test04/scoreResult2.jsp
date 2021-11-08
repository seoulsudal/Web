<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학점 변환창</title>
</head>
<body>
	<c:set var="score" value="${param.score}" />
	<h1>시험점수
		<c:out value="${score}" />
	</h1><br>
	<%-- <c:choose> 태그를 이용해 시험 점수의 유효성을 체크합니다. --%>
	<c:choose>
		<c:when test="${score >= 0 && score <= 100 }">
			<!-- 정상적인 점수이면 학점으로 변환됩니다. -->
			<c:choose>
				<c:when test="${score >= 90 && score <= 100}">
					<h1>A학점입니다.</h1>
				</c:when>
				<c:when test="${score >= 80 && score <= 90}">
					<h1>B학점입니다.</h1>
				</c:when>
				<c:when test="${score >= 70 && score <= 80}">
					<h1>C학점입니다.</h1>
				</c:when>
				<c:when test="${score >= 60 && score <= 70}">
					<h1>D학점입니다.</h1>
				</c:when>
				<c:otherwise>
					<h1>F학점입니다.</h1>
				</c:otherwise>
			</c:choose>
		</c:when>
		<!-- 시험 점수가 범위를 벗어났으면 입력 창으로 다시 이동합니다. -->
		<c:otherwise>
			<h1>점수를 잘못 입력했습니다. 다시 입력하세요.</h1>
			<a href="scoreTest.jsp">점수 입력 창으로 이동</a>
		</c:otherwise>
	</c:choose>
</body>
</html>