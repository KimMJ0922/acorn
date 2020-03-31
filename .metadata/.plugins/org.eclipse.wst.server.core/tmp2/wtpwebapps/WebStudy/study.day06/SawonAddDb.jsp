<%@page import="java.text.NumberFormat"%>
<%@page import="oracle.db.SawonDAO"%>
<%@page import="oracle.db.SawonDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String buseo = request.getParameter("buseo");
	int salary = Integer.parseInt(request.getParameter("salary"));
	SawonDTO dto = new SawonDTO(name,age,buseo,salary);
	
	SawonDAO dao = new SawonDAO();
	dao.AddSawon(dto);
	
	response.sendRedirect("SawonListDb.jsp"); 
%>
</body>
</html>