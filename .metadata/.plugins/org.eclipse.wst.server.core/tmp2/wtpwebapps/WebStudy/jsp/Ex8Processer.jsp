<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String[] ph = request.getParameterValues("ph");
	String gen = request.getParameter("gen");
%>
<div style="color:<%=color%>">
	이름 : <%=name %><br>
	번호 : <%=ph[0] %> - <%=ph[1] %> - <%=ph[2] %><br>
	색상 : <%=color %><br>
	성별 : <%=gen %><br>
</div>
<a href="javascript:history.back()">이전1</a><br>
<a href="Ex8Form.jsp">이전2</a>
</body>
</html>