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

response.sendRedirect("sessionLogin.jsp");
%>