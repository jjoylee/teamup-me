package org.teamup.web;

import java.util.Date;

import javax.inject.Inject;

import org.teamup.domain.BoardVO;
import org.teamup.persistence.BoardDAO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
    locations ={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class BoardDAOTest {
    @Inject
    private BoardDAO dao;
    
    @Test
    public void testInsertBoard()throws Exception{
        
        BoardVO vo = new BoardVO();
        
        vo.setTitle("모집");
        
        vo.setContent("hi");
        vo.setMemCount(4);
        vo.setMemberId(1);
        vo.setUrl("http://naver.com");
        vo.setCategoryId(2);
        vo.setDueDate("2016-02-02");
        dao.insertBoard(vo);
        
    }    
    
    @Test
    public void testUpdateBoard()throws Exception{
        
        BoardVO vo = new BoardVO();
        vo.setBoardId(1);
        vo.setTitle("모집");
        vo.setMemCount(4);
        vo.setMemberId(1);
        vo.setUrl("http://naver.com");
        vo.setCategoryId(2);
        vo.setDueDate("2016-02-02");
        vo.setContent("yououo");
        dao.updateBoard(vo);
        
    }    
    @Test
    public void testDeleteBoard()throws Exception{
        
        dao.deleteBoard(1);
        
    }   
}