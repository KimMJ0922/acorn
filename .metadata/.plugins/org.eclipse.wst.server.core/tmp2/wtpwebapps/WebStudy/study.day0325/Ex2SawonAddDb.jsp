<%@page import="oracle.db.SawonDAO"%>
<%@page import="oracle.db.SawonDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String buseo = request.getParameter("buseo");
	int salary = Integer.parseInt(request.getParameter("salary"));
	SawonDTO dto = new SawonDTO(name,age,buseo,salary);
	SawonDAO dao = new SawonDAO();
	
	dao.AddSawon(dto);
	
	System.out.println(name+","+age);
%>
<%="{\"success\":\"ok\"}"%>
