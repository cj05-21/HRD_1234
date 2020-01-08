<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regForm.jsp</title>
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
<%
	request.setCharacterEncoding("UTF-8");
%>
<h2>홈쇼핑 회원 등록</h2>
<form method="post" action="regProc.jsp" onsubmit="">
<table border="1">
	<tr>
		<th>회원번호(자동발생)</th>
		<td><input type="text" value="" name="custno"></td>
	</tr>
	<tr>
		<th>회원성명</th>
		<td><input type="text" value="" name="custname"></td>
	</tr>
	<tr>
		<th>회원전화</th>
		<td><input type="text" value="" name="phone"></td>
	</tr>
	<tr>
		<th>회원주소</th>
		<td><input type="text" value="" name="address"></td>
	</tr>
	<tr>
		<th>가입일자</th>
		<td><input type="text" value="" name="joindate"></td>
	</tr>
	<tr>
		<th>고객등급[A:VIP,B:일반,C:직원]</th>
		<td><input type="text" value="" name="grade"></td>
	</tr>
	<tr>
		<th>도시코드</th>
		<td><input type="text" value="" name="city"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="등록">
			<a href=""><input type="button" value="조회"></a>
		</td>
	</tr>
</table>
</form>
</section>
<footer>
HRDKOREA Copyright &copy; 2019 All right reserved Human Resources Development Service of Korea
</footer>
</body>
</html>