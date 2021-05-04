<%@page import="Telbook.Dao"%>
<%@page import="Telbook.Dto"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<%


String tel= request.getParameter("tel"); 
String name= request.getParameter("name");
String email= request.getParameter("email");
String birth= request.getParameter("birth");
String company= request.getParameter("company");
System.out.print("1111"+company);
String memo= request.getParameter("memo");  //데이터 받아옴

 

 
 Dao dao= new Dao();
 Dto dto= dao.search(tel);
 
 

 dto.setTel(tel);
 dto.setName(name);
 dto.setEmail(email);
 dto.setBirth(birth);
 dto.setCompany(company);
 dto.setMemo(memo);
 
 dao.update(dto);
 
 response.sendRedirect("main.jsp");

 
%>
