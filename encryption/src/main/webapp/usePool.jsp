<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*, javax.sql.*, javax.naming.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr class="label">
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try{
				Context initCtx = new InitialContext();
				Context envCtx = (Context)initCtx.lookup("java:comp/env");
				DataSource ds = (DataSource)envCtx.lookup("jdbc/oracle");
				conn = ds.getConnection();
						
				String sql = "select * from member1";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					String id = rs.getString("id");
					String passwd = rs.getString("passwd");
					String name = rs.getString("name");
			%>
					<tr>
						<td><%= id %></td>
						<td><%= passwd %></td>
						<td><%= name %></td>
			<%
				}
			} catch(Exception e){
				e.printStackTrace();
			}finally{
				if(rs != null){
					try{
						rs.close();
					} catch (SQLException sqle){
					}
				}
				if(pstmt != null){
					try{
						pstmt.close();
					} catch (SQLException sqle){
					}
				}
				if(conn != null){
					try{
						conn.close();
					} catch (SQLException sqle){
					}
				}
			}
			%>		
	</table>
</body>
</html>