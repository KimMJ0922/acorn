<%@page import="shop.ShopDTO"%>
<%@page import="shop.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dto" class="shop.ShopDTO"/>
<jsp:useBean id="dao" class="shop.ShopDAO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	dao.insertData(dto);
%>