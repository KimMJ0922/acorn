<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// 전체 쿠키 삭제하기
    Cookie[] cookies = request.getCookies() ;
     
	//특정 쿠키만 삭제하기
	Cookie cookie = new Cookie("login", null) ;
	cookie.setMaxAge(1) ;
	response.addCookie(cookie) ;
	
	response.sendRedirect("loginmain.jsp");
%>