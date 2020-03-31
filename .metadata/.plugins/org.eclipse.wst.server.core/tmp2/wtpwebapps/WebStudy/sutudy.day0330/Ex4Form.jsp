<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(function(){
		
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<form id="frm" action="Ex4FormProccess.jsp" method="post">
		<table class="table table-striped" style="width:400px;">
			<caption><b style="font-size:20pt;">게시글 목록</b></caption>
			<tr>
				<th style="width:80px;" bgcolor="orange">작성자</th>
				<td>
					<input type="text" name="writer" id="writer"
						   autofocus="autofocus" style="width:100px;"
						   class="form-control input-sm">
				</td>
			</tr>
			<tr>
				<th style="width:80px;" bgcolor="orange">제목</th>
				<td>
					<input type="text" name="subject" id="subject"
						   style="width:100px;" class="form-control input-sm">
				</td>
			</tr>
			<tr>
				
				<td colspan="2">
					<textarea name="content" id="content"
						   style="width:300px;height:100px;"></textarea>
				</td>
			</tr>
			<tr>
				
				<td colspan="2" align="center">
					<button type="submit" id="btnAdd" class="btn btn-warning btn-lg">게시글 저장</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>