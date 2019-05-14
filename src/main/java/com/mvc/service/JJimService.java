package com.mvc.service;

import java.util.List;

import com.mvc.vo.JJim;

public interface JJimService {
	public List<JJim> selectAll();
	public void delete(String code);
}
