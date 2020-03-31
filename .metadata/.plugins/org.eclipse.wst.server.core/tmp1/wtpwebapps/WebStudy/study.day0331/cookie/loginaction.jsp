<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	if(password.equals("aaa")){
		Cookie cookie = new Cookie("login","ok");
		cookie.setMaxAge(60*60);
		
		response.addCookie(cookie);
		
		response.sendRedirect("loginmain.jsp");
	}else{
%>
		<script type="text/javascript">
			alert("암호 안맞음");
			history.back();
		</script>
<%
	}
%>