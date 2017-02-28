package org.teamup.persistence;
import org.teamup.domain.*;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public interface MemberDAO {


	public void insertMember(MemberVO vo);
	
	public void updateMember(MemberVO vo);
	
	public void updatePrizeList(MemberVO vo); 
	
	public void changePasswd(MemberVO vo);
	
	public void deleteMember(MemberVO vo);
	
	public String findPasswd(MemberVO vo);
	
	public List<MemberVO> memberList() throws Exception;
	
	public List<MemberVO> prizeList() throws Exception;
	
	public List<MemberVO> findByEmail(String email)throws Exception;
	
	public String findMember(MemberVO vo);
	
	public String findMember2(MemberVO vo);
	
	public void fileUpload(MemberVO vo)throws Exception;
	
	public MemberVO findByMemberId(int memberId)throws Exception;

}
