package com.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mvc.dao.JJimDAO;
import com.mvc.vo.JJim;

@Service("jservice")
public class JJimServiceImpl implements JJimService{

	@Autowired
	JJimDAO dao;
	
	@Transactional
	
	@Override
	public List<JJim> selectAll() {
		return dao.selectAll();
	}

	@Override
	public void delete(String code) {
		dao.delete(code);
	}

}
