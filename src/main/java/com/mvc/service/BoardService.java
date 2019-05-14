package com.mvc.service;

import java.util.List;

import com.mvc.vo.Board;


//CLIENT(CustomerApp.java)瑜� �쐞�븳 �씤�꽣�럹�씠�뒪
public interface BoardService {
	public List<Board> selectAll();
	public Board selectOne(String num);
	public void insert(Board c);
	public void delete(String num);
	public void update(Board c); //踰덊샇 湲곗��쑝濡� 二쇱냼留� �닔�젙
	public List<Board> findByTitle(String title);
	public List<Board> findByName(String Name);
	public int login(String id, String pw);
}
