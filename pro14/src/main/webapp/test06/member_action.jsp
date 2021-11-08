<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec02.ex01.*" isELIgnored="false"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="m" class="sec02.ex01.MemberBean"/>
<jsp:setProperty property="*" name="m"/>
<%
MemberDAO memDAO = new MemberDAO();
// 회원 정보를 추가합니다.
memDAO.addMember(m);
// 회원 정보를 조회합니다.
List membersList = memDAO.listMembers();
// 조회한 회원 정보를 request에 바인딩 합니다.
request.setAttribute("membersList", membersList);
%>
</head>
<body>
	<!-- 다시 memberList.jsp로 포워딩 합니다. -->
	<jsp:forward page="memberList.jsp"/>
</body>
</html>