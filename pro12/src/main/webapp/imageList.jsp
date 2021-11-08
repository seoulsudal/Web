<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지리스트창</title>
</head>
<body>
	<ul class="lst_type">
		<li>
			<span style="margin-left: 50px">이미지</span>
			<span>이미지 이름</span>
			<samp>선택하기</samp>
		</li>
		<%
		for(int i = 0; i < 10; i++){
		%>
		<li>
			<a href="#" style="margin-left: 50px">
				<img alt="" src="image/animal.png" width="90" height="90"></a>
			<a href="#"><strong>이미지 이름 : 애니멀<%= i %></strong></a>
			<a href="#"><input name="chk<%= i %>" type="checkbox"></a>
		</li>
		<%
		}
		%>
	</ul>
</body>
</html>