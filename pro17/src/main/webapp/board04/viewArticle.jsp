<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글제목</title>
	<script src="//code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		function backToList(obj) {
			obj.action = "${contextPath}/board/listArticles.do";
			obj.submit();
		}
		<%-- 수정하기 클릭시 텍스트 박스를 활정화 시킵니다. --%>
		function fn_enable(obj) {
			<%-- 텍스트 박스의 id로 접근해 disabled 속성을 false로 설정합니다. --%>
			document.getElementById("i_title").disabled = false;
			document.getElementById("i_content").disabled = false;
			document.getElementById("i_imageFileName").disabled = false;
			document.getElementById("tr_btn_modify").style.display = block;
			document.getElementById("tr_btn").style.display = none;
		}
		<%-- 수정반영하기 클릭 시 컨트롤러에 수정 데이터를 전송합니다. --%>
		function fn_modify_article(obj) {
			obj.action = "${contextPath}/board/modArticle.do";
			obj.submit();
		}
	</script>
</head>
<body>
	<form name="frmArticle" method="post" enctype="multipart/form-data">
		<table border="0" align="center">
			<tr>
				<td width="150" align="center" bgcolor="#ff9933">글번호</td>
				<td>
					<input type="text" value="${article.articleNO}" disabled="disabled">
					<%-- 글 수정 시 글 번호를 컨트롤러로 전송하기 위해 미리 <hidden> 태그를 이용해 글 번호를 저장합니다. --%>
					<input type="hidden" name="articleNO" value="${article.articleNO}">
				</td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="#ff9933">작성자 아이디</td>
				<td>
					<input type="text" value="${article.id}" name="id" disabled="disabled">
				</td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="#ff9933">제목</td>
				<!-- 글 제목을 표시합니다. -->
				<td><input type="text" value="${article.title}" name="title" id="i_title" disabled="disabled"></td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="#ff9933">글내용</td>
				<!-- 글 내용을 표시합니다. -->
				<td><textarea rows="20" cols="60" name="content" id="i_content"	disabled="disabled">${article.content}</textarea></td>
			</tr>
			<%-- imageFileName 값이 있으면 이미지를 표시합니다. --%>
			<c:if test="${not empty article.imageFileName && article.imageFileName != 'null'}">
				<tr>
					<td width="150" align="center" bgcolor="#ff9933" rowspan="2">이미지</td>
					<%-- 이미지 수정에 대비해 미리 원래 이미지 파일 이름을 <hidden> 태그에 저장합니다. --%>
					<td>
					<input type="hidden" name="originalFileName" value="${aricle.imageFileName}">
					<%-- FileDownloadController 서블릿에 이미지 파일 이름과 글 번호를 전송해 이미지를 <img> 태그에 표시합니다. --%>
					<img src="${contextPath}/download.do?imageFileName=${article.imageFileName}&articleNO=${article.articleNO}" id="preview"><br></td>
				</tr>
				<tr>
					<%-- 수정된 이미지 파일 이름을 전송합니다. --%>
					<td><input type="file" name="imageFileName" id="i_imageFileName" disabled="disabled" onchange="readURL(this);"></td>
				</tr>
			</c:if>
			<tr>
				<td width="20%" align="center" bgcolor="#ff9933">등록일자</td>
				<td><input type="text" value="<fmt:formatDate value="${article.writeDate}"/>" disabled="disabled"></td>
			</tr>
			<tr id="tr_btn_modify">
				<td colspan="2" align="center">
				<input type="button" value="수정반영하기" onclick="fn_modify_article(frmArticle)">
				<input type="button" value="취소" onclick="backToList(frmArticle)">
			</tr>
			<tr id="tr_btn">
				<td colspan="2" align="center">
				<%-- <c:if test="${member.id == article.id}
					<input type=button value="수정하기" onClick="fn_enable(this.form)">
					<input type=button value+"삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
				 </c:if> --%>
				 <input type="button" value="수정하기" onclick="fn_enable(this.form)">
				 <input type="button" value="삭제하기" onclick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
				 <input type="button" value="리스트로 돌아가기" onclick="backToList(this.form)">
				 <input type="button" value="답글쓰기" onclick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})">
				 </td>
			</tr>
		</table>
	</form>
</body>
</html>