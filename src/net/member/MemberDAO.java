package net.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	
	public ArrayList<MemberDTO> list(){
		ArrayList<MemberDTO> list=null;
		try{
			Connection con=DBOpen.getConnection();
			StringBuilder sql=new StringBuilder();
			sql.append(" select custno,custname,phone,address,joindate,grade,city ");
			sql.append(" from member_tbl_02 ");
			PreparedStatement pstmt=con.prepareStatement(sql.toString());
			ResultSet rs= pstmt.executeQuery();
			if(rs.next()){
				list=new ArrayList<MemberDTO>();
				do{
				MemberDTO dto=new MemberDTO();
				dto.setCustno(rs.getInt("custno"));
				dto.setCustname(rs.getString("custname"));
				dto.setPhone(rs.getString("phone"));
				dto.setAddress(rs.getString("address"));
				dto.setJoindate(rs.getString("joindate"));
				dto.setGrade(rs.getString("grade"));
				dto.setCity(rs.getString("city"));
				list.add(dto);
				}while(rs.next());
			}
		}catch(Exception e){System.out.println("목록불러오기 실패"+e);}
		return list;
	}
	
	public MemberDTO select(int custno){
		MemberDTO dto=null;
		try{
			Connection con=DBOpen.getConnection();
			StringBuilder sql=new StringBuilder();
			sql.append(" select custno,custname,phone,address,joindate,grade,city ");
			sql.append(" from member_tbl_02 ");
			sql.append(" where custno=? ");
			PreparedStatement pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, custno);
			ResultSet rs= pstmt.executeQuery();
			if(rs.next()){
				 dto=new MemberDTO();
				 dto.setCustno(rs.getInt("custno"));
				 dto.setCustname(rs.getString("custname"));
				 dto.setPhone(rs.getString("phone"));
				 dto.setAddress(rs.getString("address"));
				 dto.setJoindate(rs.getString("joindate"));
				 dto.setGrade(rs.getString("grade"));
				 dto.setCity(rs.getString("city"));
			}
		}catch(Exception e){System.out.println("정보 불러오기 실패"+e);}
		return dto;
	}
	
	public int update(MemberDTO dto){
		int cnt=0;
		try{
			Connection con=DBOpen.getConnection();
			StringBuilder sql=new StringBuilder();
			sql.append(" update member_tbl_02 ");
			sql.append(" set custno=?,custname=?,phone=?,address=?,joindate=?,grade=?,city=? ");
			sql.append(" where custno=? ");
					
			PreparedStatement pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1,dto.getCustno());
			pstmt.setString(2,dto.getCustname());
			pstmt.setString(3,dto.getPhone());
			pstmt.setString(4,dto.getAddress());
			pstmt.setString(5,dto.getJoindate());
			pstmt.setString(6,dto.getGrade());
			pstmt.setString(7,dto.getCity());
			pstmt.setInt(8,dto.getCustno());
			cnt=pstmt.executeUpdate();
		}catch(Exception e){System.out.println("회원 수정 실패"+e);}
		return cnt;
	}
}
