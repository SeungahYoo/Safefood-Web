package com.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.dao.FoodDAO;
import com.mvc.vo.Food;
import com.mvc.vo.FoodBean;
@Service("service")
public class FoodServiceImpl implements FoodService{
	@Autowired
	private FoodDAO dao;
	
	/*private FoodServiceImpl() {
		dao = new FoodDAOImpl();
	}*/
	
	/*public static FoodService getInstance() {
		if(instance == null)
			instance = new FoodServiceImpl();
		return instance;
	}*/

	@Override
	public List<Food> searchAll() {
		return dao.searchAll();
	}

	@Override
	public List<Food> search(String condition, String word) {
		return dao.search(condition, word);
	}

	@Override
	public List<FoodBean> searchBest() {
		return dao.searchBest();
	}

	@Override
	public List<Food> searchBestIndex() {
		return dao.searchBestIndex();
	}

	@Override
	public Food search(String code) {
		return dao.search(code);
	}

	@Override
	public Food searchName(String name) {
		return dao.searchName(name);
	}
	
	@Override
	public List<String> searchHistoryList() {
		return dao.searchHistoryList();
	}

	@Override
	public void delete(String code, String date) {
		dao.delete(code,date);
	}

	@Override
	public FoodBean searchmyfood(String code) {
		return dao.searchmyfood(code);
	}

	@Override
	public List<FoodBean> searchmyfoodall(String id) {
		return dao.searchmyfoodall(id);
	}

}