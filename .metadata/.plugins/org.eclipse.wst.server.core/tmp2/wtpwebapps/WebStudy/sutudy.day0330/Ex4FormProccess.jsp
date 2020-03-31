<%@page import="simpleboard.BoardDAO"%>
<%@page import="simpleboard.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="simpleboard.BoardDTO">
	
</jsp:useBean>
<jsp:useBean id="dao" class="simpleboard.BoardDAO"/>
<jsp:setProperty property="*" name="dto"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	dao.insertBoard(dto);
	response.sendRedirect("Ex4Success.jsp");
%>
<body>

</body>
</html>