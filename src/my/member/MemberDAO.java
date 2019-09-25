package my.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	private Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/I4Jg66y62Y","I4Jg66y62Y","Ld6west95X");
		} catch (ClassNotFoundException e) {
			System.out.println("driver not found");
		} catch (SQLException e) {
			System.out.println("DB connection failed");
		}
		return conn;
	}
	
	public List<MemberDTO> selectMembers() {
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			conn = getConnection();
			
			String sql = "SELECT * FROM MEMBER";
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			list = makeArray(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try { if(ps!=null) ps.close();} catch(SQLException e) { }
			try { if(rs!=null) rs.close();} catch(SQLException e) { }
			try { if(conn!=null) conn.close();} catch(SQLException e) { }
		}
		return list;
	}
	
	private List<MemberDTO> makeArray(ResultSet rs) throws SQLException {
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		while(rs.next()) {
			MemberDTO dto = new MemberDTO();
			dto.setName(rs.getString("name"));
			dto.setId(rs.getString("id"));
			dto.setPass(rs.getString("pass"));
			dto.setBirth(rs.getInt("birth"));
			dto.setGender(rs.getString("gender"));
			dto.setJob(rs.getString("job"));
			dto.setAddress(rs.getString("address"));
			dto.setRegDate(rs.getDate("regDate"));
			list.add(dto);
		}
		return list;
	}
	
	
	public boolean idAvailableChk(String id) { //중복확인
		boolean result = false;
		ResultSet rs = null;
		PreparedStatement ps = null;
		Connection conn = null;
		String checkSql = "SELECT * FROM MEMBER where id= ?";
		try {
			conn = getConnection();
			ps = conn.prepareStatement(checkSql);
			ps.setString(1, id);
			
			rs = ps.executeQuery();
			if(!rs.next()) result = true;
			
		} catch (SQLException e) {

		} finally {
			
		}
		return result;
	}
	
	
	public boolean insertMember(MemberDTO dto) {
		boolean result = false;
		PreparedStatement ps = null;
		Connection conn = null;
		ResultSet rs = null;
		String insertSql = "INSERT INTO MEMBER (name, id, pass, birth, gender, job, address, regdate) VALUES(?,?,?,?,?,?,?,?);";
						
		try {
			conn = getConnection();
			ps = conn.prepareStatement(insertSql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getId());
			ps.setString(3, dto.getPass());
			ps.setInt(4, dto.getBirth());
			ps.setString(5, dto.getGender());
			ps.setString(6, dto.getJob());
			ps.setString(7, dto.getAddress());
			ps.setDate(8, dto.getRegDate());
			
			int n = ps.executeUpdate();
			if(n>0) result = true;

		} catch (SQLException e) {
			
		} finally {

		}
		return result;
	}
	
	
	public int loginCheck(String id, String pass) {
		int result = -1; // -1: not found  0: pwd error  1: success
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String loginCheckSql = "SELECT * FROM MEMBER WHERE ID= ? AND PASS = ?";
		try {
			conn = getConnection();
			ps = conn.prepareStatement(loginCheckSql);
			ps.setString(1, id);
			ps.setString(2, pass);
			
			rs = ps.executeQuery();
			if (rs.next()) {
				System.out.println("ASd");
				String dbPass = rs.getString("pass");
				if (dbPass.equals(pass)) {
					result = 1;
				} else {
					result = 0;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try { if(ps!=null) ps.close();} catch(SQLException e) { }
			try { if(rs!=null) rs.close();} catch(SQLException e) { }
			try { if(conn!=null) conn.close();} catch(SQLException e) { }
		}
		return result;
	}
	
	
}
