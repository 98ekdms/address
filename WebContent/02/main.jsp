<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<div>
<table style="border=2; width=700; margin-top:130px; ">
<caption style= "color: #FFFFFF">전화번호부</caption><br>
<tr>
<td><a href="write.jsp"><input type="button" style="color: #fff; background:black; font-size:1.5em; border-radius:0.5em; padding:5px 20px; onclick="alert" value="등록"></a></td>
<td><a href="search_w.jsp"><input type="button" style="color: #fff; background:black; font-size:1.5em; border-radius:0.5em; padding:5px 20px; onclick="alert" value="검색"></a></td>
<td><a href="list_s.jsp"><input type="button" style="color: #fff; background:black; font-size:1.5em; border-radius:0.5em; padding:5px 20px; onclick="alert" value="전체목록"></a></td>

</tr>
</table>

</div>

</body>
</html>
