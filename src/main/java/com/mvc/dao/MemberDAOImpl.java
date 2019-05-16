package com.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.mapper.MemberMapper;
import com.mvc.vo.Member;
import com.mvc.vo.Pair;

@Repository
// CRUD작업을 하는 DAO
public class MemberDAOImpl implements IMemberDAO {
	@Autowired
	MemberMapper mapper;

	@Override
	public ArrayList<Member> selectAll() {
		
		return mapper.selectAll();
	}

	@Override
	public Member selectOne(String id) {
		Member m = mapper.selectOne(id);
		System.out.println("MemberDaoImpl "+m.toString());
		if(m != null) {
			m.setAllergies(mapper.searchAllergiesAll(id).toArray(new String[] {}));
		}
		return m;
	}

	@Override
	public void insert(Member m) {
		mapper.insertMember(m);
	}

	@Override
	public void delete(String id) {
		mapper.delete(id);
	}

	@Override
	public void modify(Member m) {
		mapper.modify(m);
		mapper.deleteMemberAllergies(m.getId());
		int a = m.getAllergies().length;
		String[] codes = new String[a];
		String[] allergies = m.getAllergies();
		for (int i = 0; i < a; i++) {
			codes[i]=mapper.findCode(allergies[i]);
		}
		for (int i = 0; i < a; i++) {
			mapper.insertMemberAllergies(m.getId(),codes[i],"sysdate()");
		}
	}

	@Override
	public ArrayList<Member> search(String condition, String word) {
		if(condition.equals("name")) {
			return mapper.findByName(word);
		}else if(condition.equals("address")) {
			return mapper.findByAddress(word);
		}
		return null;
	}

	@Override
	public void insert(String id, String name, String address, String tel, String password, String[] allergies) {
		this.insert(new Member(id, name, address, tel, password, allergies));
	}

	@Override
	public void modify(String id, String name, String address, String tel, String password, String[] allergies) {
		this.modify(new Member(id, name, address, tel, password, allergies));
	}

	@Override
	public void addFood(String id, String code) {
		mapper.insertFood(id, code);
	}

	@Override
	public List<Pair> getFoods(String id) {
	
		return mapper.getFoods(id);
	}

	@Override
	public void insertJJim(String id, String code) {
		mapper.insertJJim(id, code);
	}

	@Override
	public List<String> getJJim(String id) {
		return mapper.getJJim(id);
	}
}

