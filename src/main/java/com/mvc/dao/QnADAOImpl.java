package com.mvc.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.mapper.QnAMapper;
import com.mvc.vo.QnA;


//DAO(CRUD) 객체
@Repository
public class QnADAOImpl implements QnADAO{
    
    @Autowired
    QnAMapper mapper;
        
    @Override
    public List<QnA> selectAll() {
        System.out.println(mapper);
        return mapper.selectAll();
    }

    @Override
    public QnA selectOne(String num) {
        return mapper.selectOne(num);
    }

    @Override
    public void insert(QnA c) {
        mapper.insert(c);
    }

    @Override
    public void delete(String num) {
        mapper.delete(num);
    }

    @Override
    public void update(QnA c) {
        mapper.update(c);
    }


    @Override
    public List<QnA> findByTitle(String title) {
        return mapper.findByTitle(title);
    }

    @Override
    public List<QnA> findByID(String Name) {
        System.out.println("boarddaoimpl: "+Name);
        return mapper.findByID(Name);
    }

    @Override
    public int login(String id, String pw) {
        System.out.println("boardDAO: "+id);
        return mapper.login(id,pw);
    }

	@Override
	public void ansUpdate(String num, String answer) {
		mapper.ansUpdate(num,answer);
		
	}


}