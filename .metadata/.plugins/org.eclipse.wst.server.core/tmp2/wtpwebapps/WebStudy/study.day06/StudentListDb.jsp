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
</head>
<%
	StudentDAO Dao = new StudentDAO();
	Vector<StudentDTO> str = new Vector<StudentDTO>();
	str = Dao.SearchStudent();
%>
<body>
	<a href="StudentForm.jsp">전으로</a>
	<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>JAVA</th>
			<th>HTML</th>
			<th>총점</th>
			<th>평균</th>
			<th>수정/삭제</th>
		</tr>
<%
	for(int i=0; i<str.size();i++){
		StudentDTO dto = str.get(i);
%>
		<tr>
			<td><%=i+1 %></td>
			<td><%=dto.getName() %></td>
			<td><%=dto.getJava() %></td>
			<td><%=dto.getHtml() %></td>
			<td><%=dto.getJava()+dto.getHtml() %></td>
			<td><%=(double)(dto.getJava()+dto.getHtml())/2 %></td>
			<td>
				<button type="button" name="btn"
						onclick="location.href='StudentUpdateForm.jsp?num=<%=dto.getNum() %>'">수정</button>
				<button type="button" name="btn"
						onclick="location.href='StudentDelDb.jsp?num=<%=dto.getNum() %>'">삭제</button>
						
			</td>
		</tr>
<%
	}
%>
</table>
</body>
</html>