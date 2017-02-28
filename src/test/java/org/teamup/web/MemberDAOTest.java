package org.teamup.web;

import javax.inject.*;

import org.teamup.domain.*;
import org.teamup.persistence.*;
import org.junit.*;
import org.junit.runner.*;
import org.springframework.test.context.*;
import org.springframework.test.context.junit4.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
	locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class MemberDAOTest {
	
	@Inject
	private MemberDAO dao;
	@Test
	public void testInsertMember()throws Exception{
		MemberVO vo = new MemberVO();
		vo.setEmail("user1@gmail.com");
		vo.setName("user01");
		vo.setPassword("user00");
		vo.setSchool("sswu");
		vo.setMajor("com");
		vo.setStatus("joined");
		dao.insertMember(vo);
	}
	
	@Test
	public void testUpdateMember()throws Exception
	{
		MemberVO vo = new MemberVO();
		vo.setMemberId(1);
		vo.setEmail("user1@gmail.com");
		vo.setName("user00");
		vo.setPassword("user00");
		vo.setSchool("sswu");
		vo.setMajor("com");
		vo.setStatus("joined");
		dao.updateMember(vo);
	}
	
	@Test
	public void testDeleteMember()throws Exception
	{
		MemberVO vo = new MemberVO();
		vo.setMemberId(4);
		dao.deleteMember(vo);
	}
}
