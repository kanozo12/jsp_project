<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dao" class=""/>
<jsp:useBean id="dto" class=""/>
<jsp:setProperty property="*" name="dto"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	dto.setId(id);
	dao.updateMember(dto);
	
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