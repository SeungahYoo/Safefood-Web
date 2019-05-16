package com.mvc.mapper;

import java.util.ArrayList;
import java.util.List;

import com.mvc.vo.Member;
import com.mvc.vo.Pair;

public interface MemberMapper {
	
    public ArrayList<Member> selectAll();
    public Member selectOne(String id);
    public ArrayList<String> searchAllergiesAll(String id);
    public void insertMember(Member m);
    public void delete(String id);
    public void modify(Member m);
    public void deleteMemberAllergies(String id);
    public String findCode(String allergy);
    public void insertMemberAllergies(String id, String code, String date);
    public ArrayList<Member> findByName(String name);
    public ArrayList<Member> findByAddress(String address);
    public void insertFood (String id, String code);
    public ArrayList<Pair> getFoods(String id);
    public void insertJJim (String id, String code);
    public List<String> getJJim(String id);

    
}
