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
    background-color:  #FFFFFFE0;
  }
</style>
</head>
<body>
<form action="telinsert.jsp">
<table style="border=2; width=700; margin-top:130px; ">
<caption style= "color: #FFFFFF">전화번호 등록</caption><br>
  <td>전화번호 </td> 
  <td><input type="text" name="tel"></td>
</tr>
 <tr>
    <td>이     름</td>
    <td><input type="text" name="name"></td>
  </tr>
  <tr>
    <td> email </td>
    <td><input type="text" name="email"></td>
 </tr>
<tr>
    <td>생     일</td>
    <td><input type="text" name="birth"></td>
 <tr>
    <td>회      사</td>
    <td>
    <select name="campany" style="width:48%"> 
    <option value="구글">구글</option>
    <option value="카카오">카카오</option>
    <option value="네이버">네이버</option>
    <option value="null">기타</option>
    </select> 
    </td>
  </tr>
  <tr>
    <td> memo </td>
    <td><input type="text" name="memo"></td>
</tr>
<tr>
   <td> <a href="javascript:history.back();">뒤로가기</a></td>
  <td> <input type="submit"  style="color: #fff; background:black; font-size:0.5em; border-radius:0.5em; padding:5px 20px; onclick="alert" value="저장"></td>
 </tr>

  </table>
 </form>
</body>
</html>
