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
	//login쿠키가 있는지 체크
	boolean bLogin = false;//쿠키 있으면 true로 변경 예정
	//쿠키값 얻기
	Cookie[] cookies =request.getCookies();
	if(cookies!=null){
		for(Cookie c : cookies){
			String name =  c.getName(); //쿠키 이름
			String val = c.getValue(); //쿠키 값
			
			System.out.println(name+", "+val);
			//로그인 상황
			if(name.equals("login")&&val.equals("ok")){
				bLogin=true;
			}
		}
	}
	
	//bLogin이 true면 logout, false면 login
	if(bLogin){
%>
		<jsp:include page="logoutform.jsp"/>
<%
	}else{
%>
		<jsp:include page="loginform.jsp"/>
<%	
	}

%>
<hr width="800" size="5" color="gray" align="left">
<h2>기사 목록</h2>
<jsp:include page="paper.jsp"/>
</body>
</html>