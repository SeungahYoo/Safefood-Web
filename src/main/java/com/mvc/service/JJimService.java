package com.mvc.service;

import java.util.List;


import com.mvc.vo.JJim;

public interface JJimService {
	public List<JJim> selectAll(String id);
	public void delete(String code);
	public String findbyName(String name);
	public JJim findNutrition(String code);
	
}
