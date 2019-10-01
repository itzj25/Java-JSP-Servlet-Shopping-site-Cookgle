package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import util.JDBCUtil;
import vo.BoardVO;
import vo.ProductVO;

public class BoardDAO {

	public BoardDAO() {

	}

	public List<BoardVO> getboardRec(){
 		String sql =
 				"select * from board";
 					   
 					    		
 					    		
 		List<BoardVO> list = new ArrayList<BoardVO>();
 		
 		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs =null;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			//실행 및 결과값 핸들링
            rs = ps.executeQuery();
       
            
            while (rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setBid(rs.getString("bid"));
				vo.setUserid(rs.getString("userid"));
				vo.setContent((rs.getString("content")));
				vo.setWdate((rs.getString("wdate")));
				list.add(vo);
				System.out.println("DAO vo"+vo);
			}
            
		}catch (Exception e) {
          e.printStackTrace();
		
		}finally {
			JDBCUtil.close(con, ps, rs);
		}
 		return list;
	}
	
	public int insertboard(BoardVO vo) throws Exception{
		String sql= "INSERT INTO board(bid,userid,content, wdate) VALUES(bid.nextval,?,?,?)";
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
		
			
			ps.setString(1, vo.getUserid());
			ps.setString(2, vo.getContent());
			ps.setString(3, vo.getWdate());
		
			
			//실행 및 결과값 핸들링
            result = ps.executeUpdate();
		}catch (Exception e) {
			throw e;//나를 호출 한 곳에서 처리
			// e.printStackTrace();
		}finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	}
 	
	
	public int deleteboard(String bid) {
		String sql = "delete from board where bid = ?";
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			// ? 세팅
			ps.setString(1, bid);
			//실행 및 결과값 핸들링
            result = ps.executeUpdate();
            
            
		}catch (Exception e) {
           e.printStackTrace();
		}finally {
			JDBCUtil.close(con, ps, null);
		}

		return result;
	}
	
}
