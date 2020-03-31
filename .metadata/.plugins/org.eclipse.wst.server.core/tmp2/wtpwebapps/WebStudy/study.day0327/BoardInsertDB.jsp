<%@page import="simpleboard.BoardDTO"%>
<%@page import="simpleboard.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String writer = request.getParameter("writer");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	BoardDAO dao = new BoardDAO();
	BoardDTO dto = new BoardDTO(writer,subject,content);
	dao.insertBoard(dto);
%>