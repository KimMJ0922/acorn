<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
<%	
	String main = request.getParameter("main");
	if(main==null){
		main = "layout/main.jsp";
	}
%>
	<div id="title">
		<jsp:include page="layout/title.jsp"></jsp:include>
	</div>
	<div id="menusero">
		<jsp:include page="layout/menusero.jsp"></jsp:include>
	</div>
	<div id="main">
		<jsp:include page="<%=main %>"></jsp:include>
	</div>
	<div id="bottom">
		<jsp:include page="layout/bottom.jsp"></jsp:include>
	</div>
</body>
</html>