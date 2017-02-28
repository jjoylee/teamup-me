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
public class CategoryDAOTest {
	@Inject
	private CategoryDAO dao;
	
	@Test
	public void testInsertCategory()throws Exception{
		CategoryVO vo = new CategoryVO();
		vo.setCategoryName("IT");
		dao.insertCategory(vo);
	}
	
	@Test
	public void testUpdateCategory()throws Exception{
		CategoryVO vo = new CategoryVO();
		vo.setCategoryId(1);
		vo.setCategoryName("¸¶ÄÉÆÃ");
		dao.updateCategory(vo);
	}
	
	@Test
	public void testDeleteCategory()throws Exception{
		
		dao.deleteCategory(1);
	}
}
