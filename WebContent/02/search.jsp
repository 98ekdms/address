<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Telbook.Dao"%>
<%@page import="Telbook.Dto"%>
<%@page import="java.sql.Connection"%>
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
Width:100%;
height: 40px;
margin:auto;
text-align:center;
}
 table {
    background-color:   #FFFFFFE0;
  }
</style>
</head>
<body>
<%
String tel =request.getParameter("tel");


Dao dao= new Dao();
Dto dto= dao.search(tel);


%>

		 
		  
	  
</table>
  <table style="border=2; width=700; margin-top:130px; ">
<caption style= "color: #FFFFFF">목록</caption><br>

<tr> 
<th width="200">번호</th> 
<th width="100">이름</th> 
<th width="200">생일</th> 
<th width="250">email</th> 
<th width="100">회사</th> 
<th width="250">메모</th> 
 <th width="150">등록일</th> 
 </tr>


<td><%=dto.getTel()%></td>
<td><%=dto.getName()%></td>
<td><%=dto.getBirth()%></td>
<td><%=dto.getEmail()%></td>
<td><%=dto.getCompany()%></td>
<td><%=dto.getMemo()%></td>
<td><%=dto.getDate()%></td>

</tr>
<tr>
<td colspan="7"><a href="update_w.jsp?tel=<%=dto.getTel()%>"><input type="button" style="color: #fff; background:black; font-size:0.5em; border-radius:0.5em; padding:5px 20px; onclick="alert" value="수정하기"></a>&nbsp;
<a href="delete_w.jsp?tel=<%=dto.getTel()%>"><input type="button" style="color: #fff; background:black; font-size:0.5em; border-radius:0.5em; padding:5px 20px; onclick="alert" value="삭제하기"></a>&nbsp;
<a href="main.jsp?tel=<%=dto.getTel()%>"><input type="button" style="color: #fff; background:black; font-size:0.5em; border-radius:0.5em; padding:5px 20px; onclick="alert" value="메인"></a></td>




</tr>
</table>

</body>
</html>
