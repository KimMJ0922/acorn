<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	Cookie[] cookies =request.getCookies();
	if(cookies!=null){
		for(Cookie c : cookies){
			String name =  c.getName(); //쿠키 이름
			String val = c.getValue(); //쿠키 값
		}
	}
%>
<body>
	<form action="logoutaction.jsp" method="post">
		<input type="submit" value="로그아웃">
	</form>
</body>
</html>