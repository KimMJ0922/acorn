<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	Cookie cookie = new Cookie("login","ok");
	cookie.setMaxAge(10);
	cookie.setPath("/");
	response.addCookie(cookie);
	
	response.sendRedirect("loginmain.jsp");
%>