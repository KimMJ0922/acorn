<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		border: 2px solid gray;
	}
	tr,th,td{
		border: 1px solid gray;
	}

</style>
</head>
<body>
	<table>
		<tr>
<%
			for(int i=2; i<=9;i++){
%>
				<th><%=i %>단</th>
<%
			}
%>
		</tr>
<%
		for(int i=1; i<=9;i++){
%>
			<tr>
			
<%
			for(int j=2; j<=9;j++){
%>
				<td><%=j %> * <%=i %> = <%=i*j %></td>
<%
			}
%>
			</tr>
<%
		}
%>	
	</table>
</body>
</html>