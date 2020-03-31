<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="oracle.db.SawonDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="oracle.db.SawonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	SawonDAO dao = new SawonDAO();
	StringBuffer sb = new StringBuffer();
	Vector<SawonDTO> vec = dao.selectSawon();
	
	sb.append("{"+
				"sawon:[");
	
	for(int i=0;i<vec.size();i++){
		SawonDTO dto = vec.get(i);
		sb.append("{"+
				  "\"num\":"+dto.getNum()+","+"}");
		
		if(i!=vec.size()-1){
			sb.append(",");
		}else{
			sb.append("");
		} 
		
	}
	sb.append("]"+
			"}");
%>
<%=sb.toString()%>