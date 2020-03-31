<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="memo.MemoDTO"%>
<%@page import="java.util.List"%>
<%@page import="memo.MemoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	MemoDAO dao = new MemoDAO();
	List<MemoDTO> list = dao.getAllDatas();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	JSONArray arry = new JSONArray();
	
	for(MemoDTO dto:list){
		JSONObject ob = new JSONObject();
		ob.put("num",dto.getNum());
		ob.put("nickname",dto.getNickname());
		ob.put("message",dto.getMessage());
		ob.put("joayo",dto.getJoayo());
		ob.put("writeday",sdf.format(dto.getWriteday()));
		
		arry.add(ob);
	}
%>
<%=arry.toString()%>