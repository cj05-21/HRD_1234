package net.member;

import java.sql.Connection;
import java.sql.PreparedStatement;

import DBPKG.DBOpen;

public class MemberDAO {
	public int insert(MemberDTO dto){
		int cnt=0;
		try{
			//DB 연결 
			Connection con=DBOpen.getConnection();
			//sql문자열을 StringBuilder 에 대입
			StringBuilder sql=new StringBuilder();
			sql.append(" insert into member_tbl_02(custno,custname,phone,address,joindate,grade,city) ");
			sql.append(" values(?,?,?,?,?,?,?) ");
			//StringBuilder 에 넣은 sql문자열을 sql문으로 변경
			PreparedStatement pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1,dto.getCustno());
			pstmt.setString(2,dto.getCustname());
			pstmt.setString(3,dto.getPhone());
			pstmt.setString(4,dto.getAddress());
			pstmt.setString(5,dto.getJoindate());
			pstmt.setString(6,dto.getGrade());
			pstmt.setString(7,dto.getCity());
			//sql문 실행
			cnt=pstmt.executeUpdate();
		}catch(Exception e){System.out.println("등록 실패"+e);}
		return cnt;
	}
}
