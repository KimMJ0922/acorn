<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(function(){
		
	});	
</script>
</head>
<body>
<h3>html 주석</h3>
<h5>jsp 주석</h5>
<!-- html 주석 -->
<h3>jsp 주석</h3>
<h5>html 주석</h5>
<%--jsp주석 --%>

<%
	Date date = new Date();
	int year = date.getYear()+1900;
	int month = date.getMonth()+1;
	int day = date.getDate();
%>
<h1><%=year %>년<%=month %>월<%=day %>일</h1>
</body>
</html>