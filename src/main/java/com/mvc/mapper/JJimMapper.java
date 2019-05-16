package com.mvc.mapper;

import java.util.List;

import com.mvc.vo.JJim;

public interface JJimMapper {
	public List<JJim> selectAll(String id);
	public void delete(String name);
	public String findbyName(String name);
	public JJim findNutrition(String code);
	
}
