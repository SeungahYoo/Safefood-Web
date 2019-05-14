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
	public List<JJim> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public void delete(String code) {
		mapper.delete(code);
	}

}
