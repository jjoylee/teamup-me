package org.teamup.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.teamup.domain.MemberVO;
import org.teamup.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public void join(MemberVO member) throws Exception {
		dao.insertMember(member);
	}

	@Override
	public MemberVO read(Integer memberId) throws Exception {
		
		return null;
	}

	@Override
	public void update(MemberVO member) throws Exception {
		dao.updateMember(member);
	}

	@Override
	public void delete(MemberVO member) throws Exception {
		dao.deleteMember(member);
	}

	@Override
	public List<MemberVO> selectMember() throws Exception {
		// TODO Auto-generated method stub
		return dao.memberList();
	}

	@Override
	public String findPasswd(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		return dao.findPasswd(member);
	}

	@Override
	public void changePasswd(MemberVO member) throws Exception {
		dao.changePasswd(member);
		
	}

	@Override
	public List<MemberVO> prizeList() throws Exception {
		
		return dao.prizeList();
	}

	@Override
	public List<MemberVO> findByEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		return dao.findByEmail(email);
	}
	
	@Override
    public Integer findMember(MemberVO member) throws Exception {
                
        if(dao.findMember2(member).trim().equals(member.getPassword().trim()))
            return 0;  //이메일, 비번 둘다맞는것
        else if(dao.findMember(member).equals("none"))
            return 1; //이메일이 없는경우
        else if(dao.findMember2(member).equals("failed")){    
            return 2;} //비번이 다른경우
        
        else
            return 3;
        
    }

	@Override
	public void fileUpload(MemberVO vo) throws Exception {
		dao.fileUpload(vo);
	}
	
	 @Override
	    public MemberVO findByMemberId(int memberId) throws Exception {
	        // TODO Auto-generated method stub
	        return dao.findByMemberId(memberId);
	    }
}
