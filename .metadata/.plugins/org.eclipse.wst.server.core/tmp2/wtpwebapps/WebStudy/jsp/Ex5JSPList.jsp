<%@page import="java.text.NumberFormat"%>
<%@page import="data.dto.ShopDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Vector"%>
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
<%
	List<ShopDTO> list = new Vector<ShopDTO>();
	
	list.add(new ShopDTO("사과",5,500));
	list.add(new ShopDTO("1",1,100));
	list.add(new ShopDTO("2",2,200));
	list.add(new ShopDTO("3",3,300));
	list.add(new ShopDTO("4",4,400));
	list.add(new ShopDTO("5",5,500));
%>
	<table>
		<tr>
			<th width="50">번호</th>
			<th width="100">상품</th>
			<th width="100">수량</th>
			<th width="100">가격</th>
			<th width="100">총가격</th>
		</tr>
<%
		NumberFormat nf = NumberFormat.getCurrencyInstance();
		NumberFormat nf2 = NumberFormat.getInstance();

		for(int i=0;i<list.size();i++){
			ShopDTO shop = list.get(i);
%>
			<tr>
				<td><%=i+1 %></td>
				<td><%=shop.getSang() %></td>
				<td><%=shop.getSu() %></td>
				<td><%=nf.format(shop.getDan()) %></td>
				<td><%=nf2.format(shop.getSu()* shop.getDan())%></td>
			</tr>
<%		
		}
%>
	</table>
</body>
</html>