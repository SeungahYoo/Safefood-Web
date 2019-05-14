package com.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mvc.dao.BoardDAO;
import com.mvc.vo.Board;



@Service ("bservice")
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO dao ;
	
	@Transactional
	@Override
	public List<Board> selectAll() {
		return dao.selectAll();
	}
	
	
	@Override
	public Board selectOne(String num) {
		dao.updateCount(num);
		return dao.selectOne(num);
	}

	@Override
	public void insert(Board c) {
		dao.insert(c);

	}

	@Override
	public void delete(String num) {
		dao.delete(num);

	}

	@Override
	public void update(Board c) {
		dao.update(c);

	}


	@Override
	public List<Board> findByTitle(String title) {
		return dao.findByTitle(title);
	}


	@Override
	public List<Board> findByName(String Name) {
		return dao.findByName(Name);
	}


	@Override
	public int login(String id, String pw) {
		return dao.login(id,pw);
	}

}
