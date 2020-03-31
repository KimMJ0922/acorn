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
		$(".ph1").keyup(function(){
			var ph = $(this).val();
			
			if(ph.length==3){
				$(".ph2").focus();
			}
		});
		
		$(".ph2").keyup(function(){
			var ph = $(this).val();
			
			if(ph.length==4){
				$(".ph3").focus();
			}
		});
	});	
</script>
</head>
<body>
	<form action="Ex8Processer.jsp" method="post">
		<table>
		<tr>
			<th>이름</th>
			<td>
				<input type="text" size="5" name="name">
			</td>
		</tr>
		<tr>
			<th>핸드폰</th>
			<td>
				<input type="text" class="ph1" name="ph" size="3" pattern="[0-9]{3}" maxlength="3"> - 
				<input type="text" class="ph2" name="ph" size="4" pattern="[0-9]{4}" maxlength="4"> - 
				<input type="text" class="ph3" name="ph" size="4" pattern="[0-9]{4}" maxlength="4">
			</td>
		</tr>
		<tr>
			<th>색상</th>
			<td>
				<input type="color" name="color">
			</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>
				<input type="radio" name="gen" value="남자" checked>남자
				<input type="radio" name="gen" value="여자">여자
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit">
			</td>
		</tr>
		</table>
	</form>
</body>
</html>