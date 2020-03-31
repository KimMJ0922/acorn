<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Ex2IncludeTest4.jsp">
	<jsp:param value="../img/a01.png" name="img"/>
	<jsp:param value='<%=URLEncoder.encode("ㅇㅇㅇ", "UTF-8") %>' name="msg"/>
</jsp:include>
</body>
</html>