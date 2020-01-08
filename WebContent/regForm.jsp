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
<script>
	function send(f){
		var custname=f.custname.value
		custname=custname.trim();
		if(custname.length==0){
		alert("회원성명이 입력되지 않았습니다.");
		custname.focus();
		}
		var phone=f.phone.value
		phone=phone.trim();
		if(phone.length==0){
		alert("회원전화가 입력되지 않았습니다.");
		phone.focus();
		}
		var address=f.address.value
		address=address.trim();
		if(address.length==0){
		alert("회원주소가 입력되지 않았습니다.");
		address.focus();
		}
		var joindate=f.joindate.value
		joindate=joindate.trim();
		if(joindate.length==0){
		alert("가입일자가 입력되지 않았습니다.");
		joindate.focus();
		}
		var grade=f.grade.value
		grade=grade.trim();
		if(grade.length==0){
		alert("회원등급이 입력되지 않았습니다.");
		grade.focus();
		}
		var city=f.city.value
		city=city.trim();
		if(city.length==0){
		alert("도시코드가 입력되지 않았습니다.");
		city.focus();
		}
	}
</script>
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
<form method="post" action="regProc.jsp" onsubmit="return send(this);">
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
			<a href="regList.jsp"><input type="button" value="조회"></a>
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