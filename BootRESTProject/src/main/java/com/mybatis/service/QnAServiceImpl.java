package com.mybatis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mybatis.dao.QnADAO;
import com.mybatis.vo.QnA;


@Service ("qservice")
public class QnAServiceImpl implements QnAService {
    @Autowired
    QnADAO dao ;
    
    @Transactional
    @Override
    public List<QnA> selectAll() {
        return dao.selectAll();
    }
    
    
    @Override
    public void insert(QnA c) {
        dao.insert(c);

    }

    @Override
    public void delete(String num) {
        dao.delete(num);

    }

    @Override
    public void update(QnA c) {
        dao.update(c);
    }

    @Override
    public List<QnA> findByTitle(String title) {
        return dao.findByTitle(title);
    }

    @Override
    public List<QnA> findByID(String Name) {
        return dao.findByID(Name);
    }


    @Override
    public int login(String id, String pw) {
        System.out.println("qnaService:"+id);
        return dao.login(id,pw);
    }


	@Override
	public QnA selectOne(String num) {
		return dao.selectOne(num);
	}


	@Override
	public void ansUpdate(String num, String answer) {
		dao.ansUpdate(num, answer);
		
	}

}