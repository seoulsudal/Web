<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%
	String id = "";
	try{
		id = (String)session.getAttribute("id");
		if(id == null || id.equals("")){
	%>
			<form action="sessionLoginPro.jsp" method="post">
				<table>
					<tr>
						<td class="label"><label for="id">아이디</label></td>
						<td class="content"><input id="id" name="id" type="text" size="20" maxlength="50" placeholder="아이디" autofocus="autofocus" required="required">
					</tr>
					<tr>
						<td class="label"><label for="passwd">비밀번호</label></td>
						<td class="content"><input id="passwd" name="passwd" type="password" size="20" maxlength="16" placeholder="6~16자 숫자/문자" required="required">
					</tr>
					<tr>
						<td class="label2" colspan="2"><input type="submit" value="로그인"><input type="reset" value="다시작성"></td>
					</tr>
				</table>
			</form>
	<%
	} else{
	%>
	<b><%= id %></b>님이 로그인 하셨습니다.
	<form action="sessionLogout.jsp">
		<input type="submit" value="로그아웃">
	</form>
	<%
	}
	} catch (Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>