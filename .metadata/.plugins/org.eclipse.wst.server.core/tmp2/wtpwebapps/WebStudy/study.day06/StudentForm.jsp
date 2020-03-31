<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
	<form action="StudentAddDb.jsp" method="post">
		<table>
			<tr>
				<th width="100">이름</th>
				<td width="200">
					<input type="text" name="name" size="7"
						   autofocus="autofocus" required="required">
				</td>
			</tr>
			<tr>
				<th width="100">Java</th>
				<td>
					<input type="text" name="java" size="7"
						   required="required">
				</td>
			</tr>
			<tr>
				<th width="100">HTML</th>
				<td>
					<input type="text" name="html" size="7"
						  required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">db저장</button>
				</td>
			</tr>
		</table>
	</form>
<input type="button" value="검색" onclick="location.href='StudentListDb.jsp'">
</body>
</html>