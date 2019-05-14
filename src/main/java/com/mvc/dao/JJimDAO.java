package com.mvc.dao;

import java.util.List;

import com.mvc.vo.JJim;

public interface JJimDAO {
	public List<JJim> selectAll();
	public void delete(String code);
}
