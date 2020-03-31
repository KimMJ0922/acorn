<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="memo.MemoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));

	int joayo = Integer.parseInt(request.getParameter("joayo"));
	
	MemoDAO dao = new MemoDAO();
	dao.updateLike(num,joayo);
	
	joayo = dao.getLikes(num);
%>
<%="{\"joayo\":"+joayo+"}"%>