package org.teamup.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.teamup.domain.BoardVO;
import org.teamup.domain.Criteria;
import org.teamup.domain.MemberVO;
import org.teamup.domain.SearchCriteria;
@Service
public interface BoardService {
	public void insertBoard(BoardVO vo)throws Exception;
	public BoardVO readBoard(Integer boardId)throws Exception;
	public void updateBoard(BoardVO vo)throws Exception;
	public void deleteBoard(Integer boardId)throws Exception;
	public List<BoardVO> listAll()throws Exception;
	public List<BoardVO> listPage(int page)throws Exception;
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	public int countPaging(Criteria cri)throws Exception;
	public int listCountCriteria(Criteria cri)throws Exception;
	public List<BoardVO> listCategory(Integer categoryId)throws Exception;
	public List<BoardVO>  findByMemId(Integer memberId)throws Exception;
	public void curCount(Integer boardId) throws Exception;
	public void curCount2(Integer boardId) throws Exception;
	public List<MemberVO> memberList(Integer boardId) throws Exception;
	 public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	 public int listSearchCount(SearchCriteria cri) throws Exception;
}
