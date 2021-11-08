<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style type="text/css">
	fieldset {
	width: 400px;
	}
</style>
	<script type="text/javascript" src="../js/loginpage.js"></script>
</head>
<body>
	<h1>로그인</h1>
	<hr align="left" style="width: 450px;">
	<form name="regform" method="post"
		onsubmit="return CheckForm(document.regform)"
		action="/personal/login">
		<fieldset style="border: 0">
			<fieldset>
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<td><label for="user_id">아이디</label>&nbsp;&nbsp;&nbsp;<input
							type="text" name="user_id" id="user_id"
							placeholder="최소 6자~최대 10자" size="32" maxlength="10"></td>
					</tr>
					<tr>
					</tr>
				</table>
			</fieldset>
			<table>
				<tr>
					<td></td>
				</tr>
			</table>
			<fieldset>
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<td><label for="user_pw">비밀번호</label></td>
						<td><input type="password" name="user_pw" id="user_pw"
							placeholder="영문,특수문자,숫자 혼합 8~12자" size="32" maxlength="12"></td>
					</tr>
				</table>
			</fieldset>
			<br> <input type="submit" value="로그인"
				style="width: 430px; height: 50px; font-size: 25px;">
			<table>
				<tr>
					<td><input type="checkbox" name="keep" id="keep">아이디
						저장 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="">아이디 찾기</a>&nbsp;|&nbsp;<a
						href="">비밀번호 찾기</a>&nbsp;|&nbsp;<a href="./template.jsp?page=memberForm">회원가입</a></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>