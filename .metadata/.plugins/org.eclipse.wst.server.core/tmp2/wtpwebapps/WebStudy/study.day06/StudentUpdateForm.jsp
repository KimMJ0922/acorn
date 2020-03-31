<%@page import="oracle.db.StudentDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="oracle.db.StudentDAO"%>
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
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	StudentDAO dao = new StudentDAO();
	Vector<StudentDTO> str = dao.updateForm(num);
	StudentDTO dto = str.get(0);
%>
<body>
	<form action="StudentUpdateDb.jsp?num=<%=num %>" method="post">
		<table>
			<tr>
				<th width="100">이름</th>
				<td width="200">
					<input type="text" name="name" size="7"
						   autofocus="autofocus" required="required" value="<%=dto.getName()%>">
				</td>
			</tr>
			<tr>
				<th width="100">Java</th>
				<td>
					<input type="text" name="java" size="7"
						   required="required" value="<%=dto.getJava()%>">
				</td>
			</tr>
			<tr>
				<th width="100">HTML</th>
				<td>
					<input type="text" name="html" size="7"
						  required="required" value="<%=dto.getHtml()%>">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">수정완료</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>