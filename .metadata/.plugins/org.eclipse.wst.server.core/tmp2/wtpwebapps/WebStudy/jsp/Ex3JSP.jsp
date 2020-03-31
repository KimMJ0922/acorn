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
<%
	String[] mycolor={"red","green","blue","purple","orange"};
	String[][] myflower={
						{"장미","yellow"},
						{"안개","pink"},
						{"국화","cyan"}
						};
	
%>
<table>
	<tr>
		<th width="60">번호</th>
		<th width="100">색상</th>
	</tr>
	
<%
		int i=0;
		for(String s : mycolor){
			i++;
%>
			<tr>
				<td><%=i %></td>
				<td style="color:<%=s%>"><%=s %></td>
			</tr>
<%
		}
%>
</table>
<br><br>
<%=myflower.length %>
<table>
	<tr>
		<th>번호</th>
		<th>꽃</th>
		<th>색상</th>
	</tr>
<%
	for(i=0;i<myflower.length;i++){
%>
		<tr>
			<td><%=i+1 %></td>
			<td><%=myflower[i][0] %></td>
			<td style="color:<%=myflower[i][1]%>"><%=myflower[i][1] %></td>
		</tr>
<%
	}
%>
</table>
</body>
</html>