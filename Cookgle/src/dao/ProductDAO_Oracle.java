package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import util.JDBCUtil;
import vo.ProductVO;

public class ProductDAO_Oracle extends ProductDAO {
	
 	public List<ProductVO> getProductRec(String userid){
 		String sql =
 				"select * from products where userid=?";
 					   
 					    		
 					    		
 		List<ProductVO> list = new ArrayList<ProductVO>();
 		
 		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs =null;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			//실행 및 결과값 핸들링
		    ps.setString(1,userid);
            rs = ps.executeQuery();
       
            
            while (rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setPid(rs.getString("pid"));
				vo.setPname(rs.getString("pname"));
				vo.setCategory((rs.getString("category")));
				vo.setPrice(rs.getString("price"));
				vo.setUserid((rs.getString("userid")));
				vo.setImg((rs.getString("img")));
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
	
	public int insertProduct(ProductVO vo) throws Exception{
		String sql= "INSERT INTO products(pid, pname, category, price, userid,img) VALUES(pid.nextval,?,?,?,?,?)";
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
		
			
			ps.setString(1, vo.getPname());
			ps.setString(2, vo.getCategory());
			ps.setString(3, vo.getPrice());
			ps.setString(4, vo.getUserid());
			ps.setString(5, vo.getImg());
			
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
 	
	
	public int deleteProduct(String pid) {
		String sql = "delete from products where pid = ?";
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			// ? 세팅
			ps.setString(1, pid);
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
