package com.mvc.mapper;

import java.util.List;

import com.mvc.vo.JJim;

public interface JJimMapper {
	public List<JJim> selectAll();
	public void delete(String code);
}
