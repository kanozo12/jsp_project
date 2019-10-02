<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	int counter = 0;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:59161:xe","system","oracle");
	
	String sql = "select * from member";
	ps = conn.prepareStatement(sql);
	rs = ps.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JDBC 연동 / 회원목록</h2>
	<table border="1" sytle="width: 90%">
		<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>생년</th>
			<th>성별</th>
			<th>직업</th>
			<th>주소</th>
			<th>가입일</th>
		</tr>
		
<%
	if(rs!=null) {
		while(rs.next()) {
			counter++;
			String name = rs.getString("name");
			String id = rs.getString("id");
			String pass = rs.getString("pass");
			int birth = rs.getInt("birth");
			String gender = rs.getString("gender");
			String job = rs.getString("job");
			String address = rs.getString("address");
			Date regDate = rs.getDate("regDate");
%>		
		<tr>
			<td><%=name %> </td>
			<td><%=id %> </td>
			<td><%=pass %> </td>	
			<td><%=birth %> </td>
			<td><%=gender %> </td>
			<td><%=job %> </td>
			<td><%=address %> </td>
			<td><%=regDate %> </td>
		</tr>
<%
		}
	}
	rs.close();
	ps.close();
	conn.close();
%>	
	</table>
	<h3>total records : <%=counter %></h3>
</body>
</html>