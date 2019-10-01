package service;

import java.util.List;

import vo.BoardVO;
import vo.ProductVO;



public interface BoardService {
	List<BoardVO> BoardList();
	int addBoard(BoardVO vo) throws Exception;
	int deleteBoard(String bid);


}
