<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="net.member.MemberDTO"></jsp:useBean>
<jsp:useBean id="dao" class="net.member.MemberDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regProc.jsp</title>
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
	//한글 인코딩 utf-8
	request.setCharacterEncoding("UTF-8");

	//regForm.jsp 에서 보낸 매개변수를 변수에 할당
	int custno=Integer.parseInt(request.getParameter("custno"));
	String custname=request.getParameter("custname");
	String phone=request.getParameter("phone");
	String address=request.getParameter("address");
	String joindate=request.getParameter("joindate");
	String grade=request.getParameter("grade");
	String city=request.getParameter("city");
	
	//위의 변수를 dto 객체에 담은 후 밑의 함수 매개변수 보내줄것이다.
	dto.setCustno(custno);
	dto.setCustname(custname);
	dto.setPhone(phone);
	dto.setAddress(address);
	dto.setJoindate(joindate);
	dto.setGrade(grade);
	dto.setCity(city);
	
	int cnt=dao.insert(dto);
	
	//위의 insert 문이 실행 여부에 따라 실행되는 문이 나눔
	if(cnt==0){
		out.print(" <script> ");
		out.print(" alert('회원등록을 실패했습니다.'); ");
		out.print(" history.back();");
		out.print(" </script> ");
	}else{
		out.print(" <script> ");
		out.print(" alert('회원등록을 완료 되었습니다.'); ");
		out.print(" location.href='regForm.jsp'");
		out.print(" </script> ");
	};
%>
</section>
<footer>
HRDKOREA Copyright &copy; 2019 All right reserved Human Resources Development Service of Korea
</footer>
</body>
</html>