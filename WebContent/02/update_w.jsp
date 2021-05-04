<%@page import="Telbook.Dto"%>
<%@page import="Telbook.Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String tel = request.getParameter("tel");
    

    Dao dao= new Dao();
    
    Dto dto= dao.search(tel);
    %>
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
<form action="update_m.jsp" method="post">
  <table style="border=2; width=700; margin-top:130px; ">
<caption style= "color: #FFFFFF">정보 수정</caption><br>
    
        <input type="hidden" name="tel" value="<%=dto.getTel() %>">
    <tr><td>이름</td>
        <td><input type="text" name="name" size="20" value="<%=dto.getName() %>"></td></tr>
    <tr><td>email</td>
        <td><input type="text" name="email" size="20" value="<%=dto.getEmail()%>"></td></tr>
    <tr><td>생일</td>
        <td><input type="text" name="birth" size="20" value="<%=dto.getBirth()%>"></td></tr>
    <tr><td>회사</td>
        <td><input type="text" name="company" size="20" value="<%=dto.getCompany()%>"></td></tr>
    <tr><td>메모</td>
        <td><input type="text" name="memo" size="20" value="<%=dto.getMemo()%>"></td></tr>
       <input type="hidden" name="time" value="<%=dto.getDate()%>">
  <tr> 
  <td> <a href="javascript:history.back();">뒤로가기</a></td>
    <td colspan="4"><input type="submit" style="color: #fff; background:black; font-size:0.5em; border-radius:0.5em; padding:5px 20px; onclick="alert" value="확인"></td></tr>
  </table>
</form>


</body>
</html>
