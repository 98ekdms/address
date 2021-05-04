<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Telbook.Dao"%>
<%@page import="Telbook.Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
Dao dao = new Dao();

 List<Dto> list = dao.selectAllmemberList();
/*for(Dto dto : list){
	out.print(dto.getTel());
	out.print(dto.getName());
	out.print(dto.getBirth());
	out.print(dto.getEmail());
	out.print(dto.getCompany());
	out.print(dto.getMemo());
	out.print(dto.getDate());
}
*/%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호 전체 목록</title>
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
Width:100%;
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
<table style="border=2; width=700; margin-top:130px; ">
<caption style= "color: #FFFFFF">전화번호 전체 목록</caption><br>
<tr> 
<th width="200">번호</th> 
<th width="100">이름</th> 
<th width="200">생일</th> 
<th width="250">email</th> 
<th width="150">회사</th> 
<th width="100">메모</th> 
 <th width="100">등록일</th> 
 </tr>


<%
for(Dto dto : list){
%>	
<tr>
<td><%=dto.getTel()%></td>
<td><%=dto.getName()%></td>
<td><%=dto.getBirth()%></td>
<td><%=dto.getEmail()%></td>
<td><%=dto.getCompany()%></td>
<td><%=dto.getMemo()%></td>
<td><%=dto.getDate()%></td>
</tr>
<%
}
%>
<tr>
 <td colspan="7"> <a href="javascript:history.back();">뒤로가기</a>&nbsp;<a href="main.jsp"><input type="button" 
  style="color: #fff; background:black; font-size:0.5em; border-radius:0.5em; padding:5px 20px; onclick="alert" value="확인"></a></td>

</tr>
</tr>
</table>


</body>
</html>
