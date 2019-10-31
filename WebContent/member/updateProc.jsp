<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dao" class="my.member.MemberDAO"/>
<jsp:useBean id="dto" class="my.member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("loginId");
	dto.setId(id);
	boolean rst = dao.updateMember(dto);
	
	if(rst) {
%>
	<script type="text/javascript">
		location.href="loginForm.jsp";
	</script>
<%
	} else {
%>
	<script type="text/javascript">
		history.go(-1);
	</script>
<%
	}
%>
</body>
</html>