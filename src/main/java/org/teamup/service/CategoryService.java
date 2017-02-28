package org.teamup.service;

import org.springframework.stereotype.Service;
import org.teamup.domain.CategoryVO;

@Service
public interface CategoryService {
	public void insertCategory(CategoryVO vo)throws Exception;
	public CategoryVO readCategory(Integer categoryId)throws Exception;
	public void updateCategory(CategoryVO vo)throws Exception;
	public void deleteCategory(Integer categoryId)throws Exception;
	public String getCategoryName(Integer categoryId)throws Exception;
}
