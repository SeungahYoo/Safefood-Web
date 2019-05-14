package com.mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.dao.IMemberDAO;
import com.mvc.vo.Member;
@Service("memberservice")
public class MemberServiceImpl implements MemberService{
   @Autowired
   private IMemberDAO dao;

  /* private MemberServiceImpl() {
       dao = new MemberDAOImpl();
   }
   
   public static MemberService getInstance() {
	   if(instance == null)
		   instance = new MemberServiceImpl();
	   return instance;
   }*/

   @Override
   public ArrayList<Member> selectAll() {
       return dao.selectAll();
   }

   @Override
   public Member selectOne(String id) {
	   System.out.println(id);
       return dao.selectOne(id);
   }

   @Override
   public void insert(Member m) {
       dao.insert(m);
   }

   @Override
   public void delete(String id) {
       dao.delete(id);
   }

   @Override
   public void modify(Member m) {
      dao.modify(m);
   }

   @Override
   public ArrayList<Member> search(String condition, String word) {
	   return dao.search(condition, word);
   }

    @Override
    public void insert(String id, String name, String address, String tel, String password, String[]allergies) {        
         dao.insert(id, name, address, tel, password, allergies);
    }

    @Override
    public void modify(String id, String name, String address, String tel, String password, String[] allergies) {
        dao.modify(id, name, address, tel, password, allergies);
    }
    
    @Override
    public void addFood(String id , String code) {
        dao.addFood(id, code);
    }

    @Override
    public List<String> getFoods(String id) {
        return dao.getFoods(id);
    }

	@Override
	public void insertJJim(String id, String code) {
		dao.insertJJim(id, code);
	}

	@Override
	public List<String> getJJim(String id) {
		
		return dao.getJJim(id);
	}

}