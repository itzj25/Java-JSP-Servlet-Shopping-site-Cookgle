package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.JDBCUtil;
import vo.UserVO;

public class UserDao {
	
	public int insertUser(UserVO user) {
		String sql = "insert into users(id,password,name) values(?,?,?)";
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;

		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, user.getId());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getName());

			result = ps.executeUpdate();

			System.out.println(result);
			System.out.println("user테이블에 데이터 삽입 완료");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	}
	public int UpdateUser(UserVO user) {
		String sql = "update users set name=? where id = ?";
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;

		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, user.getName());
			ps.setString(2, user.getId());

			result = ps.executeUpdate();

			System.out.println("user테이블에 데이터 업데이트 완료");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	}
	public UserVO LoginUser(UserVO user) {
		String sql = "select * from users where id = ? and password = ?";
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
	
		UserVO data = null;
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, user.getId());
			ps.setString(2, user.getPassword());

			rs = ps.executeQuery();
			if(rs.next()) {
				data = new UserVO();
				
				data.setId(rs.getString("id"));
				data.setPassword(rs.getString("password"));
				data.setName(rs.getString("name"));
				data.setRole(rs.getString("role"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, rs);
		}
		return data;
	}
	
	
	
	public int idCheck(String id) {

		String sql = "select id from users where id = ?";
		int result = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JDBCUtil.getConnection();
			ps=con.prepareStatement(sql);
			ps.setString(1, id);

			rs = ps.executeQuery();

			while(rs.next())	{// 아이디 중복되면 1 아니면 0 반환됨.
				
			   return result=1;

			}  

		} catch (Exception e) {

			e.printStackTrace();

		}finally {
			JDBCUtil.close(con, ps, rs);
		}
		return result;
		
	}
}
