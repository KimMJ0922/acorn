<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Ex7Action.jsp" method="post">
		<table>
			<caption>
				<b>폼 태그2</b>
			</caption>
			<tr>
				<th width="100" bgcolor="#999">
					이름
				</th>
				<td>
					<input type="text" name="name" size="10" autofocus="autofocus"
						   placeholder="이름 입력" required="required">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#999">
					비밀번호
				</th>
				<td>
					<input type="text" name="pass" size="10" 
						   placeholder="비밀번호" required="required">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#999">
					색상
				</th>
				<td>
					<input type="color" name="color" value="#ffffff">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#999">
					생년월일
				</th>
				<td>
					<input type="date" name="birth" required="required">
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#999">
					운전면허
				</th>
				<td>
					<input type="checkbox" name="driver">있음
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#999">
					나이
				</th>
				<td>
					<input type="text" name="age" pattern="{0-9}{1,2}">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="image" src="../img/pointer.png">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>