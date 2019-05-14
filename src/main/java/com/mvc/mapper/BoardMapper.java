package com.mvc.mapper;

import java.util.List;

import com.mvc.vo.Board;

//DAO(BoardApp.java)瑜� �쐞�븳 �씤�꽣�럹�씠�뒪
public interface BoardMapper {
	public List<Board> selectAll();
	public Board selectOne(String num);
	public void insert(Board c);
	public void delete(String num);
	public void update(Board c); //踰덊샇 湲곗��쑝濡� 二쇱냼留� �닔�젙
	public void updateCount(String num);
	public List<Board> findByTitle(String title);
	public List<Board> findByName(String Name);
	public int login(String id, String pw);
	
}
