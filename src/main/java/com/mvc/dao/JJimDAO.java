package com.mvc.dao;

import java.util.List;

import com.mvc.vo.JJim;

public interface JJimDAO {
	public List<JJim> selectAll(String id);
	public void delete(String code);
	public String findbyName(String name);
	public JJim findNutrition(String code);
}
