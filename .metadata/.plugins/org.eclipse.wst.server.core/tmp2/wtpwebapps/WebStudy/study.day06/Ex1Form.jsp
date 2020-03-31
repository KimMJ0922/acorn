<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(function(){
		
	});	
</script>
</head>
<body>
	<form action="Ex1Process.jsp" method="post">
		<b>취미</b><br>
		<input type="checkbox" name="hobby" value="게임">게임
		<input type="checkbox" name="hobby" value="웹툰보기">웹툰보기
		<input type="checkbox" name="hobby" value="낚시">낚시
		<input type="checkbox" name="hobby" value="여행">여행
		<br><br>
		<b>가고 싶은 여행지</b><br>
		<select multiple="multiple" size="5" name="sel">
			<option value="나라1">나라1</option>
			<option value="나라2">나라2</option>
			<option value="나라3">나라3</option>
			<option value="나라4">나라4</option>
			<option value="나라5">나라5</option>
			<option value="나라6">나라6</option>
			<option value="나라7">나라7</option>
			<option value="나라8">나라8</option>
			<option value="나라9">나라9</option>
		</select>
		<br><br>
		<input type="submit" value="완료">
	</form>
</body>
</html>