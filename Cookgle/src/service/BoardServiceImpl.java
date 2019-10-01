package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import dao.BoardDAO;
import vo.BoardVO;

public class BoardServiceImpl implements BoardService {
	BoardDAO dao;

	public BoardServiceImpl(BoardDAO dao) {
		super();
		this.dao = dao;
	}

	public BoardDAO getDao() {
		return dao;
	}

	public void setDao(BoardDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<BoardVO> BoardList() {
		// TODO Auto-generated method stub
		return dao.getboardRec();
	}

	@Override
	public int addBoard(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertboard(vo);
	}

	@Override
	public int deleteBoard(String bid) {
		// TODO Auto-generated method stub
		return dao.deleteboard(bid);
	}


}