<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="my.member.MemberDAO"/>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	boolean result = dao.idAvailableChk(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#e4f7ba">
<div align="center">
	<i><b>eD Line</b></i>
	<hr>
	<b><%=id %></b>는 
	<%
		if(result) {
	%> <font color="blue">사용 가능</font> 합니다.
	<%
		} else {
	%> <font color="red">사용 불가능</font> 합니다.
	<%
		}
	%>
	<hr>
	<a href="#" onclick="javascript:self.close()">닫기</a>
</div>

</body>
</html>