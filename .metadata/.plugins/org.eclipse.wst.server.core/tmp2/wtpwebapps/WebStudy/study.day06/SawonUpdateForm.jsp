<%@page import="oracle.db.SawonDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="oracle.db.SawonDAO"%>
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
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	SawonDAO dao = new SawonDAO();
	Vector<SawonDTO> vec = new Vector<SawonDTO>();
	vec = dao.selectSawon(num);
	SawonDTO dto = new SawonDTO();
	dto = vec.get(0);
	String[] arry = {"홍보부","인사부","교육부"};
%>
	<form action="SawonUpdateDb.jsp" method="post">
		<table>
			<tr>
				<th width="120">이름</th>
				<td width="200">
					<input type="text" name="name" value="<%=dto.getName()%>">
				</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>
					<input type="text" name="age" value="<%=dto.getAge()%>">
				</td>
			</tr>
			<tr>
				<th>부서</th>
				<td>
					<select name="buseo">
<%
						for(int i=0;i<arry.length;i++){
							String str = dto.getBuseo();
							if(str.equals(arry[i])){
%>
								<option selected><%=arry[i] %></option>
<%
							}else{
%>
								<option><%=arry[i] %></option>
<%
							}					
						}
%>

					</select>
				</td>
			</tr>
			<tr>
				<th>연봉</th>
				<td>
					<input type="text" name="salary" value="<%=dto.getSalary()%>">
				</td>
			</tr>
			<tr>
				
				<td colspan="2" align="center">
					<input type="hidden" name="num" value="<%=num%>">
					<input type="submit" value="수정">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>