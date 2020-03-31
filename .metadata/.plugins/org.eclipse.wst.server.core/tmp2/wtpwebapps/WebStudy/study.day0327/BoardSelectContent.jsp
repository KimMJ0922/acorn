<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="simpleboard.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="simpleboard.BoardDAO"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDAO dao = new BoardDAO();
	String num = request.getParameter("num");
	dao.updateReadCount(num);
	List<BoardDTO> list = dao.getContent(num);
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
%>
<list>
	<count><%=list.size() %></count>
<%
		for(BoardDTO dto : list){
%>
			<data>
				<num><%=dto.getNum() %></num>
				<writer><%=dto.getWriter() %></writer>
				<subject><%=dto.getSubject() %></subject>
				<content><%=dto.getContent() %></content>
				<readcount><%=dto.getReadcount() %></readcount>
				<writeday><%=sdf.format(dto.getWriteday()) %></writeday>
			</data>
<%
		}
%>
</list>