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
<title>구구단 출력</title>
</head>
<body>
	<c:set var="dan" value="${param.dan}" />
	<table border="1" width="800" align="center">
		<tr align="center" bgcolor="lightgreen">
			<td colspan="2"><c:out value="${dan}" />단 출력</td>
		</tr>

		<c:forEach var="i" begin="1" end="9" step="1">
			<%-- <c:forEach> 태그의 반복 변수 i가 홀수인지 짝수인지 체크하여 행의 배경색을 교대로 출력합니다. --%>
			<c:if test="${i%2 == 0}">
				<tr align="center" bgcolor="#ccff66">
			</c:if>
			<c:if test="${i%2 == 1}">
				<tr align="center" bgcolor="#ccccff">
			</c:if>
				<td width="400"><c:out value="${dan}" /> * <c:out value="${i}" />
				</td>
				<td width="400"><c:out value="${dan * i}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>