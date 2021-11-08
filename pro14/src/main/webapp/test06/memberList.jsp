<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightgreen">
		 	<td width="7%"><b>아이디</b></td>
		 	<td width="7%"><b>비밀번호</b></td>
		 	<td width="7%"><b>이름</b></td>
		 	<td width="7%"><b>이메일</b></td>
		 	<td width="7%"><b>가입일</b></td>
		 </tr>
		 <c:choose>
		 <!-- 자바 코드를 사용하지 않습니다. -->
		 <%-- ArrayList list = request.getAttribute("membersList"); --%>
		 	<c:when test="${membersList == null}">
		 		<tr>
		 			<td colspan="5">
		 			<b>등록된 회원이 없습니다.</b>
		 			</td>
		 		</tr>
		 	</c:when>
		 	<!-- 표현 언어에서 바인딩된 속성 이름으로 바로 접근합니다. -->
		 	<c:when test="${membersList != null}">
		 		<!-- membersList에 저장된 memberBean을 mem에 차례대로 가져와 속성 이름으로 출력합니다. -->
		 		<c:forEach var="mem" items="${membersList}">
		 			<tr align="center">
		 				<td>${mem.id}</td>
		 				<td>${mem.pwd}</td>
		 				<td>${mem.name}</td>
		 				<td>${mem.email}</td>
		 				<td>${mem.joinDate}</td>
		 			</tr>
		 		</c:forEach>
		 	</c:when>
		 </c:choose>
	</table>
</body>