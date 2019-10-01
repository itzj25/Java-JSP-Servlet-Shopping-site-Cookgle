package service;

import java.util.List;
import vo.ProductVO;

public interface ProductService {
	
	List<ProductVO> ProductList(String userid);
	int addProduct(ProductVO vo) throws Exception;
	int deleteProduct(String pid);

}
