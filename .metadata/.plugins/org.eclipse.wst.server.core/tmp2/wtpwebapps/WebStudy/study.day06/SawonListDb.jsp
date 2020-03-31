<%@page import="java.text.NumberFormat"%>
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
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	SawonDAO dao = new SawonDAO();
	Vector<SawonDTO> vec = new Vector<SawonDTO>();
	vec = dao.selectSawon();
	NumberFormat fm = NumberFormat.getCurrencyInstance();
%>
	<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>부서</th>
			<th>연봉</th>
			<th>추가/삭제</th>
		</tr>
<%
		for(int i=0;i<vec.size();i++){
			SawonDTO dto = vec.get(i);
%>
			<tr>
				<td><%=i+1 %></td>
				<td><%=dto.getName() %></td>
				<td><%=dto.getAge() %></td>
				<td><%=dto.getBuseo() %></td>
				<td><%=fm.format(dto.getSalary()) %></td>
				<td>
					<form action="SawonUpdateForm.jsp" method="post">
						<button type="submit" name="num" value="<%=dto.getNum() %>">수정</button>
					</form>
					<form action="SawonDelDb.jsp" method="post">
						<button type="submit" name="num" value="<%=dto.getNum() %>">삭제</button>
					</form>
				</td>
			</tr>
<%
		}
%>		
	
	</table>

</body>
</html>