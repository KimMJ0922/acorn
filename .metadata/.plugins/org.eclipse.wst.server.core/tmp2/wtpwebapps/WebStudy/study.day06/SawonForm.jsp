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
	<form action="SawonAddDb.jsp" method="post">
		<table>
			<tr>
				<th width="120">이름</th>
				<td width="200">
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>
					<input type="text" name="age">
				</td>
			</tr>
			<tr>
				<th>부서</th>
				<td>
					<select name="buseo">
						<option selected>홍보부</option>
						<option>교육부</option>
						<option>인사부</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>연봉</th>
				<td>
					<input type="text" name="salary">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>