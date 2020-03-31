<%@page import="java.util.List"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<String> list = new Vector<>();
	list.add("장미");
	list.add("국화");
	list.add("안개");
	list.add("벚꽃");
	list.add("후리지아");
	
	request.setAttribute("list", list);
	
	for(String s:list){
		out.print(s+"<br>");
	}
%>
<jsp:include page="Ex2IncludeTest1.jsp"></jsp:include>
</body>
</html>