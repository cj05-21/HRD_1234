<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="net.member.*" %> 
<jsp:useBean id="dto" class="net.member.MemberDTO"></jsp:useBean>
<jsp:useBean id="dao" class="net.member.MemberDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regUpdateProc.jsp</title>
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

	int custno=Integer.parseInt(request.getParameter("custno"));
	String custname=request.getParameter("custname");
	String phone=request.getParameter("phone");
	String address=request.getParameter("address");
	String joindate=request.getParameter("joindate");
	String grade=request.getParameter("grade");
	String city=request.getParameter("city");
	
	dto.setCustno(custno);
	dto.setCustname(custname);
	dto.setPhone(phone);
	dto.setAddress(address);
	dto.setJoindate(joindate);
	dto.setGrade(grade);
	dto.setCity(city);
	
	int cnt=dao.update(dto);
	
	if(cnt==0){
		out.print(" <script> ");
		out.print(" alert('회원수정이 실패했습니다.'); ");
		out.print(" history.back();");
		out.print(" </script> ");
	}else{
		out.print(" <script> ");
		out.print(" alert('회원정보 수정이 완료 되었습니다.'); ");
		out.print(" location.href='regList.jsp'");
		out.print(" </script> ");
	};
%>
</section>
<footer>
HRDKOREA Copyright &copy; 2019 All right reserved Human Resources Development Service of Korea
</footer>
</body>
</html>