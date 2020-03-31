<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Vector"%>
<%@page import="shop.ShopDTO"%>
<%@page import="java.util.List"%>
<%@page import="shop.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String searchText = request.getParameter("text");
	List<ShopDTO> list = new Vector<ShopDTO>();
	
	ShopDAO dao = new ShopDAO();
	
	list = dao.getSearchData(searchText);
	
	
	JSONArray arr = new JSONArray();
	
	for(ShopDTO dto : list){
		JSONObject ob = new JSONObject();
		ob.put("num",dto.getNum());
		ob.put("sang",dto.getSang());
		ob.put("color",dto.getColor());
		ob.put("price",dto.getPrice());
		ob.put("ipgoday",dto.getIpgoday());
		
		arr.add(ob);
	}
%>
<%=arr.toString()%>