<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소검색결과</title>
	<script type="text/javascript">
		function filladd(add1,add2) {
			opener.document.regform.address1.value = add1;
			opener.document.regform.address2.value = add2;
			this.close()
		}
	</script>
</head>
<body>
	<p>
		<input type="text" name="zipcode" size="30">
		<input type="button" value="우편번호" onclick="#">
	</p>
	<a href="javascript:filladd('15080','서울특별시 영등포구 당산1동')">15080 서울특별시 영등포구 당산1동</a><br>
	<a href="javascript:filladd('15042','서울특별시 영등포구 당산2동')">15042 서울특별시 영등포구 당산2동</a><br>
	<a href="javascript:filladd('15002','서울특별시 영등포구 당산3동')">15002 서울특별시 영등포구 당산3동</a>
	<br>
</body>
</html>