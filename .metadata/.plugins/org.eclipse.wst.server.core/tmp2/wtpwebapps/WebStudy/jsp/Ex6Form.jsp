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
	<form action="Ex6Action.jsp" method="post">
		<table>
			<caption>
				<b>폼 태그1</b>
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
				<td colspan="2" align="center">
					<input type="submit" value="완료">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>