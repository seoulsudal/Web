<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 출력</title>
</head>
<body>
	<ul class="lst_type">
		<li>
			<span style="margin-left: 50px">이미지</span>
			<span>이미지 이름</span>
			<span>선택하기</span>
		</li>
		<%-- <c:forEach> 태그를 이용해 이미지와 체크박스를 연속해서 나타냅니다. --%>
		<c:forEach var="i" begin="1" end="9" step="1">
		<li>
			<a href="#" style="margin-left: 50px"><img alt="" src="../image/animal.png" width="90" height="90"></a>
			<a href="#"><strong>이미지 이름: 애니멀${i}</strong></a>
			<a href="#"><input name="chk${i}" type="checkbox"></a>
		</li>
		</c:forEach>
	</ul>
</body>
</html>