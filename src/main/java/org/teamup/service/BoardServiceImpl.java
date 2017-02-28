package org.teamup.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.teamup.domain.BoardVO;
import org.teamup.domain.Criteria;
import org.teamup.domain.MemberVO;
import org.teamup.domain.SearchCriteria;
import org.teamup.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	@Inject
	private BoardDAO dao;
	@Override
	public void insertBoard(BoardVO vo) throws Exception {
		dao.insertBoard(vo);
	}

	@Override
	public BoardVO readBoard(Integer boardId) throws Exception {
		return dao.readBoard(boardId);
	}

	@Override
	public void updateBoard(BoardVO vo) throws Exception {
		dao.updateBoard(vo);
	}

	@Override
	public void deleteBoard(Integer boardId) throws Exception {
		dao.deleteBoard(boardId);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		return dao.listPage(page);
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}

	@Override
	public List<BoardVO> listCategory(Integer categoryId) throws Exception {
		return dao.listCategory(categoryId);
	}

	@Override
	public List<BoardVO> findByMemId(Integer memberId) throws Exception {
		// TODO Auto-generated method stub
		return dao.findByMemId(memberId);
	}

	@Override
    public void curCount(Integer boardId) throws Exception {
        dao.curCount(boardId);
        
    }
    
    @Override
    public void curCount2(Integer boardId) throws Exception {
        dao.curCount2(boardId);
        
    }

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.countPaging(cri);
	}
	
	@Override
    public List<MemberVO> memberList(Integer boardId) throws Exception {
        
        return dao.memberList(boardId);
    }
	
	@Override
    public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {

      return dao.listSearch(cri);
    }

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
