<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="sec02.ex02.*, java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정창</title>
	<style type="text/css">
		.cls1{
			font-size: 40px;
			text-align: center;
		}
	</style>
</head>
<body>
	<h1 class="cls1">회원 정보 수정창</h1>
	<!-- 수정하기 클릭 시 컨트롤러에 /member/modMember.do로 요청합니다. -->
	<form action="${contextPath}/member/modMember.do?id=${memInfo.id}" method="post">
		<table align="center">
			<tr>
				<td width="200px;">
					<p align="right">아이디</p>
				</td>
				<!-- 조회한 회원 정보를 텍스트 박스에 표시합니다. -->
				<td width="400px"><input type="text" name="id" value="${memInfo.id}" disabled="disabled"></td>
			</tr>
			<tr>
				<td width="200px;">
					<p align="right">비밀번호</p>
				</td>
				<!-- 조회한 회원 정보를 텍스트 박스에 표시합니다. -->
				<td width="400px"><input type="password" name="pwd" value="${memInfo.pwd}"></td>
			</tr>
			<tr>
			<td width="200px;">
					<p align="right">이름</p>
				</td>
				<td width="400px"><input type="text" name="name" value="${memInfo.name}"></td>
			</tr>
			<tr>
			<td width="200px;">
					<p align="right">이메일</p>
				</td>
				<td width="400px"><input type="text" name="email" value="${memInfo.email}"></td>
			</tr>
			<tr>
			<td width="200px;">
					<p align="right">가입일</p>
				</td>
				<td width="400px"><input type="text" name="joinDate" value="${memInfo.joinDate}" disabled="disabled"></td>
			</tr>
			<tr align="center">
				<td colspan="2" width="400px;"><input type="submit" value="수정하기"><input type="reset" value="다시입력"></td>
			</tr> 
		</table>
	</form>
</body>
</html>