<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*" isELIgnored="false"%>
<!-- core태그 라이브러리를 사용하기 전에 설정해야 합니다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="membersList" class="java.util.ArrayList"/>
<jsp:useBean id="membersMap" class="java.util.HashMap"/>
<%
membersMap.put("id", "park2");
membersMap.put("pwd", "4321");
membersMap.put("name", "박지성");
membersMap.put("email", "park2@test.com");
MemberBean m1 = new MemberBean("son", "1234", "손흥민", "son@test.com");
MemberBean m2 = new MemberBean("ki", "4321", "기성용", "ki@test.com");
membersList.add(m1);
membersList.add(m2);
membersMap.put("membersList", membersList);
%>
<%-- <c:set> 태그를 이용해 HashMap에 저장된 ArrayList에 접근하기 위해 사용하기 편리한 이름으로 설정합니다. --%>
<c:set var="membersList" value="${membersMap.membersList}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
		</tr>
		<tr align="center">
			<td>${membersMap.id}</td>
			<td>${membersMap.pwd}</td>
			<td>${membersMap.name}</td>
			<td>${membersMap.email}</td>
		</tr>
		<tr align="center">
			<%-- <c:set> 태그로 설정한 변수 이름으로 접근하여 출력합니다. --%>
			<td>${membersList[0].id}</td>
			<td>${membersList[0].pwd}</td>
			<td>${membersList[0].name}</td>
			<td>${membersList[0].email}</td>
		</tr>
		<tr align="center">
			<%-- <c:set> 태그로 설정한 변수 이름으로 접근하여 출력합니다. --%>
			<td>${membersList[1].id}</td>
			<td>${membersList[1].pwd}</td>
			<td>${membersList[1].name}</td>
			<td>${membersList[1].email}</td>
		</tr>
	</table>
</body>
</html>