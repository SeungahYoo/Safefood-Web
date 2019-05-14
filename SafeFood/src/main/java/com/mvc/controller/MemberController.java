package com.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.service.FoodService;
import com.mvc.service.MemberService;
import com.mvc.vo.Food;
import com.mvc.vo.Member;
@Controller
public class MemberController {
	@Autowired
    private MemberService memberService;
	@Autowired
    private FoodService foodService;

    /*public MemberController() {
        memberService = MemberServiceImpl.getInstance(); // singleton
        foodService = FoodServiceImpl.getInstance(); // singleton
    }*/

	@RequestMapping(value = "/memberAdd.mvc", method = RequestMethod.POST)
    public String memberAdd(Model model,String id, String name, String address, String tel, String password, String[] allergies) throws ServletException, IOException {//회원 가입
        // service를 통한 삽입 수행
        memberService.insert(id, name, address, tel, password, allergies);
        // request에 식품 목록 세팅
        model.addAttribute("mainList", foodService.searchAll());
        return "main/index";
    }

	@RequestMapping(value = "/memberSearch.mvc", method = RequestMethod.GET)
    public String memberSearch(Model model,String id) throws ServletException, IOException {//회원 조회
        // serivce를 통한 회원 조회
        memberService.selectOne(id);
        // request에 식품 목록 세팅
        model.addAttribute("mainList", foodService.searchAll());
        return "main/index";
    }

	@RequestMapping(value = "/memberModify.mvc", method = RequestMethod.POST)
    public String memberModify(HttpSession session, Model model,String id, String name, String address, String tel, String password, String[] allergies) throws ServletException, IOException {//회원 수정
       
        // service를 통한 회원 수정
        memberService.modify(id, name, address, tel, password, allergies);
        // 수정된 회원 정보 조회
        Member m = memberService.selectOne(id);
       
        // session 정보 갱신
        session.setAttribute("id", id);
        session.setAttribute("m", m);
        model.addAttribute("m", m);
        model.addAttribute("mainList", foodService.searchAll());
        return "main/index";
    }

	@RequestMapping(value = "/memberWithdraw.mvc", method = RequestMethod.GET)
    public String memberWithdraw(HttpSession session, Model model, String id) throws ServletException, IOException {//회원 탈퇴
		// service를 통한 회원 삭제
        memberService.delete(id);
        // session 정보 삭제
        session.setAttribute("id", null);
        // 식품 정보 추출
        model.addAttribute("mainList", foodService.searchAll());
        return "main/index";
    }

	@RequestMapping(value = "/login.mvc", method = RequestMethod.POST)
    public void login(HttpSession session, Model model, String id, String pass, HttpServletResponse response) throws ServletException, IOException {
      
		// 서비스를 통한 회원 정보 조회
        Member check = memberService.selectOne(id);
       
        // 존재하는 회원이고 비밀번호가 일치할 경우
        if(check != null && pass.equals(check.getPassword())) {
        	// session에 정보 세팅
        	
        	//System.out.println("session만들어지나느"+id);
            session.setAttribute("id", id);
            session.setAttribute("m", check);
            model.addAttribute("mainList", foodService.searchAll());
         // 사용자 섭취 목록 반환
        	List<String> codes = memberService.getJJim(id);	
        	// 섭취 목록 코드에 따라 Food 정보 목록 추출
        	List<Food> list = new ArrayList<Food>();
        	
        	for(String code : codes) {
        		list.add(foodService.search(code));
        	}
        	// 사용자가 추가한 식품정보 목록 세팅
        	
        	session.setAttribute("jjimlist", list);
            response.getWriter().println("1");
        }
        // 존재하지 않는 회원이고 비밀번호가 일치하지 않을 경우
        else {
            String message = "아이디 또는 패스워드가 다릅니다.";
            model.addAttribute("str", message);
            model.addAttribute("mainList", foodService.searchAll());
            response.getWriter().println("1");
        }
    }

	@RequestMapping(value = "/logout.mvc", method = RequestMethod.GET)
    public String logout(HttpSession session,Model model) throws IOException, ServletException {
    	// session 정보 삭제
        session.setAttribute("id", null);
        // 식품 정보 세팅
        model.addAttribute("mainList", foodService.searchAll());
        return "main/index";
    }
	
	@RequestMapping(value = "/addFood.mvc", method = RequestMethod.GET)
    public void addFood(HttpSession session, String code, HttpServletResponse response) throws IOException {
        // 사용자 정보가 세션에 존재할 경우
        String id = (String) session.getAttribute("id");
        if (id != null) {
        	// service를 통한 식품 섭취 코드 추가
            memberService.addFood(id, code); 
            response.getWriter().println("1");
        }
        // 사용자 정보가 세션에 존재하지 않을 경우
        else
            response.getWriter().println("2");
    }
	
	@RequestMapping(value = "/findpw.mvc", method = RequestMethod.POST)
	   public void findIDPW(HttpSession session, Model model, String id, String name, HttpServletResponse response) throws ServletException, IOException {
	       // 서비스를 통한 회원 정보 조회
	       Member check = memberService.selectOne(id);
	       // 존재하는 회원이고 비밀번호가 일치할 경우
	       if(check != null && name.equals(check.getName())) {
	           response.getWriter().println(check.getPassword());
	       }
	       // 존재하지 않는 회원이고 비밀번호가 일치하지 않을 경우
	       else {
	           response.getWriter().println("-1");
	       }
	   }
	@RequestMapping(value = "/jjimFood.mvc", method = RequestMethod.GET)
    public void jjimFood(HttpSession session, String code, HttpServletResponse response) throws IOException {
        // 사용자 정보가 세션에 존재할 경우
        String id = (String) session.getAttribute("id");
        if (id != null) {
        	// service를 통한 식품 섭취 코드 추가
            memberService.insertJJim(id, code); 
            response.getWriter().println("1");
        }
        // 사용자 정보가 세션에 존재하지 않을 경우
        else
            response.getWriter().println("2");
        
        
    }
}