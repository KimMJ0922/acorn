<%@page import="simpleboard.BoardDTO"%>
<%@page import="simpleboard.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
	BoardDAO dao = new BoardDAO();
	
	dao.delBoard(num);
%>