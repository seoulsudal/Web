<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script type="text/javascript" src="/personal/js/membershippage.js">
	
</script>
</head>
<body>
	<p><font size="5">회원가입</font></p>
	<br>
	<form name="regform" method="post" onsubmit="return CheckForm(document.regform);" action="/personal/memberShipT">
		<fieldset style="width: 580px;">
			<table border="1" style="border-collapse: collapse;">
				<tr>
					<td height="35"><label for="name">이름(실명)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<td height="35"><label for="birthday">생년월일</label></td>
					<td><input type="date" name="birthday" id="birthday">&nbsp;
					<input type="radio" name="calendar" class="calendar" value="양력">양력
					<input type="radio" name="calendar" class="calendar" value="">음력</td>
				</tr>
				<tr>
					<td rowspan="4"><label for="id">회원 ID</label>&nbsp;</td>
					<td style="border-bottom: none;">
					<input type="text" name="id" id="id" maxlength="10">&nbsp;
					<input type="button" name="idconfirm" id="idconfirm" value="ID 중복확인">
				</tr>
				<tr>
					<td style="border-top: none; border-bottom: none;">
					<font size="2">회원ID는 가입후 변경이 불가능합니다.</font></td>
				</tr>
				<tr>
					<td style="border-top: none; border-bottom: none;">
					<font size="2">회원ID와 비밀번호는 영문자로 시작하는 4~18자의 영문, 숫자를 조합사셔서</font></td>
				</tr>
				<tr>
					<td style="border-top: none;">
					<font size="2">공백없이 기입해주세요.</font></td>
				</tr>
				<tr>
					<td height="35"><label for="pw">비밀번호</label></td>
					<td><input type="password" name="pw" id="pw" maxlength="12">&nbsp;
					<label for="repw">재입력</label>&nbsp;
					<input type="password" name="repw" id="repw" maxlength="12">
				</tr>
				<tr>
					<td height="35"><label for="email">이메일</label></td>
					<td><input type="email" name="email" id="email">&nbsp;
					<input type="checkbox" name="Bulletin" id="Bulletin">
					<font size="2">공지메일을 받음</font></td>
				</tr>
				<tr>
					<td height="35"><label for="num">자택전화</label></td>
					<td><select name="nn">
							<option>국번</option>
							<option value="서울">02</option>
							<option value="경기">031</option>
							<option value="부산">051</option>
							<option value="대구">053</option>
							<option value="인천">032</option>
							<option value="광주">062</option>
							<option value="대전">042</option>
							<option value="울산">052</option>
							<option value="세종">044</option>
							<option value="강원">033</option>
							<option value="충북">043</option>
							<option value="충남">041</option>
							<option value="전북">063</option>
							<option value="전남">061</option>
							<option value="경북">054</option>
							<option value="경남">055</option>
							<option value="제주">064</option>
					</select>-
					<input type="text" name="num1" class="num" size="1" maxlength="4">-
					<input type="text" name="num2" class="num" size="1" maxlength="4"></td>
				</tr>
				<tr>
					<td height="35"><label for="ph">휴대폰</label></td>
					<td><select name="phn">
							<option>국번</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="017">017</option>
							<option value="019">019</option>
					</select>-<input type="text" name="ph1" class="ph" size="1" maxlength="4">-
					<input type="text" name="ph2" class="ph" size="1" maxlength="4">
					<input type="checkbox" name="msg" id="msg" maxlength="4">
					<font size="2">상담전화와 문자메세지를 받음</font></td>
				</tr>
				<tr>
					<td rowspan="3"><label for="address">자택주소</label></td>
					<td style="border-bottom: none;" height="30">
					<input type="text" name="address1" size="2" maxlength="5">&nbsp;
					<input type="button" name="address_s" value="우편번호 검색" onclick="openwin()"></td>
				</tr>
				<tr>
					<td style="border-top: none; border-bottom: none;">
					<input type="text" name="address2" class="address" size="50"></td>
				</tr>
				<tr>
					<td style="border-top: none;" height="30">
					<input type="text"	name="address3" class="address" size="30"></td>
				</tr>
				<tr>
					<td height="35"><label for="job">직업</label></td>
					<td><select name="job">
							<option>------------------</option>
							<option value="job1">직업1</option>
							<option value="job2">직업2</option>
							<option value="job3">직업3</option>
							<option value="job4">직업4</option>
							<option value="job5">직업5</option>
					</select>
				</tr>
				<tr>
					<td rowspan="7"><label for="root">가입경로</label></td>
					<td style="border-bottom: none;" height="30"><strong>구인구직사이트</strong></td>
				</tr>
				<tr>
					<td style="border-top: none; border-bottom: none;">
					<input type="radio" name="root" class="root">알바몬&nbsp;
					<input type="radio" name="root" class="root">알바천국&nbsp;
					<input type="radio" name="root" class="root">인쿠르트&nbsp;
					<input type="radio" name="root" class="root">잡코리아</td>
				</tr>
				<tr>
					<td style="border-top: none; border-bottom: none;">-----------------------------------------------------</td>
				</tr>
				<tr>
					<td style="border-top: none; border-bottom: none;"><strong>포탈사이트</strong></td>
				</tr>
				<tr>
					<td style="border-top: none; border-bottom: none;">
					<input type="radio" name="root" class="root">네이버 검색&nbsp;
					<input type="radio" name="root" class="root">다음 검색&nbsp;
					<input type="radio" name="root" class="root">카페&nbsp;
					<input type="radio" name="root" class="root">블로그</td>
				</tr>
				<tr>
					<td style="border-top: none; border-bottom: none;">-----------------------------------------------------</td>
				</tr>
				<tr>
					<td style="border-top: none;" height="30">
					<input type="radio"	name="root" class="root">기타
					<input type="text" name="root" class="root"></td>
				</tr>
			</table>
		</fieldset>
		<br> <br> <br>
		<table style="margin-left: 230px; margin-right: auto;">
			<tr>
				<td align="center"><input type="submit" name="join" id="join" value="회원가입">&nbsp;
				<input type="reset" name="cancel" id="cancel" value="취소-이전"></td>
			</tr>
		</table>
	</form>
</body>
</html>