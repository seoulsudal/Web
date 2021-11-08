<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
List membersList = new ArrayList();
MemberBean m1 = new MemberBean("son", "1234", "손흥민", "son@test.com");
MemberBean m2 = new MemberBean("ki", "4321", "기성용", "ki@test.com");
MemberBean m3 = new MemberBean("park", "1212", "박지성", "park@test.com");
// 세 명의 회원 정보를 MemberBean에 저장한 후 다시 ArrayList에 저장합니다.
membersList.add(m1);
membersList.add(m2);
membersList.add(m3);
%>
<c:set var="membersList" value="<%= membersList %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="5%"><b>이름</b></td>
			<td width="5%"><b>이메일</b></td>
		</tr>
		<!-- memberList에 저장된 회원 수만큼 반복 변수 i를 0부터 1씩 증가시키면서 forEach문을 실행합니다. -->
		<c:forEach var="i" begin="0" end="2" step="1">
			<tr align="center">
			<!-- 반복 변수 i를 ArrayList의 인덱스로 사용해 회원 정보를 차례대로 출력합니다. -->
			<td>${membersList[i].id}</td>
			<td>${membersList[i].pwd}</td>
			<td>${membersList[i].name}</td>
			<td>${membersList[i].email}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>