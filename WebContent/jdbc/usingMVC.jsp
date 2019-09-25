<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, my.member.*" %>
<jsp:useBean id="dao" class="my.member.MemberDAO" />
<%
	List<MemberDTO> list = dao.selectMembers();
	int counter = list.size();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>usingMVC</title>
</head>
<body>
	<h2>MVC 패턴 / 회원목록</h2>
	<table border="1" style="width: 90%">
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
		for(MemberDTO dto:list) {
%>		
		<tr>
			<td><%=dto.getName() %> </td>
			<td><%=dto.getId() %> </td>
			<td><%=dto.getPass() %> </td>	
			<td><%=dto.getBirth() %> </td>
			<td><%=dto.getGender() %> </td>
			<td><%=dto.getJob() %> </td>
			<td><%=dto.getAddress() %> </td>
			<td><%=dto.getRegDate() %> </td>
		</tr>
<%
		}
%>	
	</table>
	<h3>total records : <%=list.size() %></h3>
</body>
</html>