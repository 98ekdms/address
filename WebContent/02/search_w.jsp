<%@page import="java.util.List"%>
<%@page import="Telbook.Dto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Telbook.Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html { 
  background: url(3.JPG) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
table,td{
border: 1px solid yellow;
}

table{
Width:40%;
height: 100px;
margin:auto;
text-align:center;
}
 table {
    background-color:   #FFFFFFE0;
  }
</style>

</head>
<body>
<form  method="post" action="search.jsp">
  <table style="border=2; width=700; margin-top:130px; ">
<caption style= "color: #FFFFFF">번호 검색</caption><br>
<tr>
<td>검색할 전화번호 :</td>
<td><input type="text" name="tel"></td>
</tr>  
  
 <td> <a href="javascript:history.back();">뒤로가기</a></td>
<td><input type="submit"  style="color: #fff; background:black; font-size:0.5em; border-radius:0.5em; padding:5px 20px; onclick="alert" value="검색"></td>
  </table>
  </form>
 
 
 

 


</body>
</html>
