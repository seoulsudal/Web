<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, model.MemberVO, controller.MemberDAO"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
String name = request.getParameter("name");

MemberVO m = new MemberVO(id, passwd, name);
MemberDAO memberDAO = new MemberDAO();
memberDAO.addMember(m);

List membersList = memberDAO.listMembers();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
	<table align="center" width="100%">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="5%">이름</td>
		</tr>
		<%
		if(membersList.size() == 0){
		%>
		<tr>
			<td colspan="5">
				<p align="center"><b><span>등록된 회원이 없습니다.</span></b></p>
			</td>
		</tr>
		<%
		} else{
			for(int i = 0; i < membersList.size(); i++){
				MemberVO bean = (MemberVO) membersList.get(i);
		%>
		<tr align="center">
			<td><%= bean.getId() %></td>
			<td><%= bean.getPasswd() %></td>
			<td><%= bean.getName() %></td>
		</tr>
		<%
			}
		}
		%>
		<tr height="1" bgcolor="#99ccff">
			<td colspan="5"></td>
		</tr>
	</table>
</body>
</html>