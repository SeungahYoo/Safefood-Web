package com.mvc.service;

import java.util.List;

import com.mvc.vo.QnA;


public interface QnAService {
	public List<QnA> selectAll();
	public QnA selectOne(String num);
	public void insert(QnA c);
	public void delete(String num);
	public void update(QnA c);
	public List<QnA> findByTitle(String title);
	public List<QnA> findByID(String Name);
	public int login(String id, String pw);
	public void ansUpdate(String num, String answer);
}
