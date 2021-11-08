<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>escapeXml 태그 실습</title>
</head>
<body>
	<h2>escapeXml 변환하기</h2>
	<h2>
		<pre>
			<!-- escapeXml 속성이 true이므로 value의 &lt는 그대로 화면에 출력됩니다. -->
			<c:out value="&lt;" escapeXml="true"/>
			<!-- escapeXml 속성이 false이므로 value의 &lt는 해당하는 특수 문자로 변환되어 화면에 출력됩니다. -->
			<c:out value="&lt;" escapeXml="false"/>
			<c:out value="&gt;" escapeXml="true"/>
			<c:out value="&gt;" escapeXml="false"/>
			<c:out value="&amp;" escapeXml="true"/>
			<c:out value="&amp;" escapeXml="false"/>
			<c:out value="&#039;" escapeXml="true"/>
			<c:out value="&#039;" escapeXml="false"/>
			<c:out value="&#034;" escapeXml="true"/>
			<c:out value="&#034;" escapeXml="false"/>		
		</pre>
	</h2>
</body>
</html>