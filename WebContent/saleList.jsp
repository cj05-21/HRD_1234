<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="net.member.*" %>     
<jsp:useBean id="dto" class="net.member.MemberDTO"></jsp:useBean>
<jsp:useBean id="dao" class="net.member.MemberDAO"></jsp:useBean>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>saleList.jsp</title>
<style>
header{
 background-color: skyblue
}
nav{
 background-color: gray
}
footer{
 background-color: black;
 color:white;
}
</style>
</head>
<body>
<header>
<h1>쇼핑몰 회원관리 ver 1.0</h1>
</header>
<nav>
<jsp:include page="mainnav.jsp"></jsp:include>
</nav>
<section>
<h3>회원매출조회</h3>
<table border="1">
	<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
	</tr>
<%
request.setCharacterEncoding("UTF-8");

ArrayList<MemberDTO> list=dao.salelist();

for(int idx=0 ;idx<list.size();idx++){
	dto=list.get(idx);
%>	
		<tr>
			<td><%=dto.getCustno()%></td>
			<td><%=dto.getCustname()%></td>
		    <td><%if(dto.getGrade().equals("A")){out.println("VIP");}else if(dto.getGrade().equals("B")){out.println("일반");}else if(dto.getGrade().equals("C")){out.println("직원");} %></td>
			<td><%=dto.getHap() %></td>
		</tr>
<% 	
}
%>	
</table>
</section>
<footer>
HRDKOREA Copyright &copy; 2019 All right reserved Human Resources Development Service of Korea
</footer>
</body>
</html>