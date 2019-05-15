package com.mvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.mapper.JJimMapper;
import com.mvc.vo.JJim;

@Repository
public class JJimDAOImpl implements JJimDAO{
	@Autowired
	JJimMapper mapper;
	
	@Override
	public List<JJim> selectAll(String id) {
		return mapper.selectAll(id);
	}

	@Override
	public void delete(String code) {
		mapper.delete(code);
	}

	@Override
	public String findbyName(String name) {
		return mapper.findbyName(name);
	}

	@Override
	public JJim findNutrition(String code) {
		return mapper.findNutrition(code);
	}

}
