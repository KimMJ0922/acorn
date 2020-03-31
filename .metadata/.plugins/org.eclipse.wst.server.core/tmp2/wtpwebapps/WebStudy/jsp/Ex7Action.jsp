<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String pass = request.getParameter("pass");
	String birth = request.getParameter("birth");
	String check = request.getParameter("driver");
	String age = request.getParameter("age");
%>

<%=name %><br>
<%=color %><br>
<%=pass %><br>
<%=birth %><br>
<%=check==null?"면허 없":"면허 있"%><br>
<%=age %>
</body>
</html>