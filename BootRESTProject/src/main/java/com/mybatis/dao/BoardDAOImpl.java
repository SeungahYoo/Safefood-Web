package com.mybatis.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mybatis.mapper.BoardMapper;
import com.mybatis.vo.Board;

//DAO(CRUD) 객체
@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Autowired
	BoardMapper mapper;
		
	@Override
	public List<Board> selectAll() {
		System.out.println(mapper);
		return mapper.selectAll();
	}

	@Override
	public Board selectOne(String num) {
		return mapper.selectOne(num);
	}

	@Override
	public void insert(Board c) {
		mapper.insert(c);
	}

	@Override
	public void delete(String num) {
		mapper.delete(num);
		
	}

	@Override
	public void update(Board c) {
		mapper.update(c);
	}

	@Override
	public void updateCount(String num) {
		mapper.updateCount(num);
	}

	@Override
	public List<Board> findByTitle(String title) {
		return mapper.findByTitle(title);
	}

	@Override
	public List<Board> findByName(String Name) {
		System.out.println("boarddaoimpl: "+Name);
		return mapper.findByName(Name);
	}

	@Override
	public int login(String id, String pw) {
		System.out.println("boardDAO: "+id);
		return mapper.login(id,pw);
	}



}
