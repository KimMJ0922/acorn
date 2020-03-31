<%@page import="memo.MemoDAO"%>
<%@page import="memo.MemoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String nickname = request.getParameter("nickname");
	String message = request.getParameter("message");
	
	MemoDAO dao = new MemoDAO();
	MemoDTO dto = new MemoDTO(nickname,message);
	
	dao.insertMemo(dto);
%>