package com.veg.kth.community.service;

import static com.veg.common.JDBCTemplate.*;
import static com.veg.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.veg.kth.community.model.dao.CommunityDao;
import com.veg.kth.community.model.dto.Category;
import com.veg.kth.community.model.dto.Hashtag;
import com.veg.kth.community.model.dto.Recipe;

public class CommunityService {

	private CommunityDao dao = new CommunityDao(); 
	
	public List<Recipe> selectRecipeAll(){
		Connection conn = getConnection();
		List<Recipe> result = dao.selectRecipeAll(conn);
		close(conn);
		return result;
	}
	
	
	public List<Hashtag> selectHashtagAll(){
		Connection conn = getConnection();
		List<Hashtag> result = dao.selectHashtagAll(conn);
		close(conn);
		return result;
	}
	
	public List<Category> selectCategoryAll(){
		Connection conn = getConnection();
		List<Category> result = dao.selectCategoryAll(conn);
		close(conn);
		return result;
	}
	
	
	public int insertRecipe(Recipe r) {
		Connection conn = getConnection();
		int result = dao.insertRecipe(conn, r);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
		
	}
	
}
