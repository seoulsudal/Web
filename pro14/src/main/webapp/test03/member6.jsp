<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
List datalist = new ArrayList();
datalist.add("hello");
datalist.add("world");
datalist.add("안녕하세요!!");
%>
<%-- 표현 언어에서 사용할 수 있도록 <c:set> 태그를 이용해 변수에 dataList를 할당합니다. --%>
<c:set var="list" value="<%= datalist %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 실습</title>
</head>
<body>
	<!-- 반복 변수 i를 1부터 10까지 1씩 증가시키면서 반복문을 수행합니다. -->
	<c:forEach var="i" begin="1" end="10" step="1" varStatus="loop">
		i = ${i} &nbsp;&nbsp;&nbsp; 반복횟수: ${loop.count}<br>
	</c:forEach>
	<br>
	<!-- 반복 변수 i를 1부터 10까지 2씩 증가시키면서 반복문을 수행합니다. -->
	<c:forEach var="i" begin="1" end="10" step="2">
		5 * ${i} = ${5*i}<br>	
	</c:forEach>
	<br>
	<!-- ArrayList 같은 컬렉션 객체에 저장된 객체(데이터)를 반복해서 반복 변수 data에 하나씩 가져와 처리합니다. -->
	<c:forEach var="data" items="${list}">
		${data}<br>
	</c:forEach>
	<br>
	<c:set var="fruits" value="사과, 파인애플, 바나나, 망고, 귤"/>
	<!-- 구분자(delims) ,를 이용해 문자열을 분리해서 출력합니다. -->
	<c:forTokens items="${fruits}" delims="," var="token">
		${token}<br>
	</c:forTokens>
</body>
</html>