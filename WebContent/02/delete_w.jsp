<%@page import="Telbook.Dao"%>
<%@page import="Telbook.Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String tel= request.getParameter("tel");

Dto dto= new Dto();
dto.setTel(tel);

Dao dao= new Dao();
dao.delete(dto);

response.sendRedirect("main.jsp");


%>