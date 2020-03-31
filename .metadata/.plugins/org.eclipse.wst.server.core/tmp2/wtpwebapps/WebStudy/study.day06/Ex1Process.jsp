<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] ch = request.getParameterValues("hobby");
	String[] sel = request.getParameterValues("sel");
	if(ch!=null){
		for(int i=0;i<ch.length;i++){
%>
			<%=ch[i] %>
<%
		}
	}else{
%>
		ch선택안함
<%
	}
%>
	<br>
<%
	if(sel!=null){
		for(int i=0;i<sel.length;i++){
%>
			<%=sel[i] %>
<%
		}
	}else{
%>
		sel선택안함
<%
	}
%>
</body>
</html>