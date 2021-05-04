<%@page import="Telbook.Dao"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="Telbook.Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%


String tel= request.getParameter("tel"); 
String name= request.getParameter("name");
String email= request.getParameter("email");
String birth= request.getParameter("birth");
String company= request.getParameter("campany");
String memo= request.getParameter("memo");  //데이터 받아옴
Timestamp time=new Timestamp(System.currentTimeMillis());
 
 Dto dto= new Dto();
 dto.setTel(tel);
 dto.setName(name);
 dto.setEmail(email);
 dto.setBirth(birth);
 dto.setCompany(company);
 dto.setMemo(memo);
 dto.setDate(time);
 
 Dao dao= new Dao();
 dao.insert(dto);
 
 response.sendRedirect("main.jsp");

 
%>



