package com.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.service.BoardService;
import com.mvc.service.FoodService;
import com.mvc.service.JJimService;
import com.mvc.service.MemberService;
import com.mvc.vo.Board;
import com.mvc.vo.Food;
import com.mvc.vo.FoodBean;
import com.mvc.vo.JJim;
import com.mvc.vo.Member;
import com.mvc.vo.Pair;

@Controller
public class MainController {
	@Autowired
	FoodService service;
	@Autowired
    MemberService mservice;
	@Autowired
	JJimService jservice;
	@Autowired
	BoardService bservice;

	/*public MainController() {
		foodService = FoodServiceImpl.getInstance(); // singleton
		memberService = MemberServiceImpl.getInstance(); // singleton
	}*/

	@RequestMapping(value = "/main.mvc", method = RequestMethod.GET)
	public String foodSearchAll(Model model) { // 전체 푸드리스트
		// service를 통한 식품 정보 목록 추출
		List<Food> list = service.searchAll();
		List<Board> notice = bservice.selectAll();
		model.addAttribute("noticeList",notice);
		model.addAttribute("mainList", list);
		return "main/index";
	}

	@RequestMapping(value = "/list.mvc", method = RequestMethod.GET)
	public String foodlist(Model model) { // 전체 푸드리스트
		// service를 통한 식품 정보 목록 추출
		List<Food> list = service.searchAll();
		model.addAttribute("list", list);
		return "foodlist/index";
	}
	
	@RequestMapping(value = "/foodSearch.mvc", method = RequestMethod.GET)
	public String foodSearch(Model model, String word) { // 식품 조회
		// 음식 검색 시작 - 이름, 제조사, 재료
		List<Food> list = service.search("", word);
		model.addAttribute("mainList", list);
		model.addAttribute("type", "search");
		return "main/search_result";
	}
	
	@RequestMapping(value = "/searchHistory.mvc", method = RequestMethod.GET)
	@ResponseBody
	public List<String> searchHistory(Model model) { // 검색히스토리
		List<String> list = service.searchHistoryList();
		System.out.println(list+"searchHistory controller");
		//model.addAttribute("historyList", list);
		return list;
	}
	
	@RequestMapping(value = "/detail.mvc", method = RequestMethod.GET)
	public String detail(HttpSession session, Model model, String code) {
		// 조회할 식품 코드 정보 추출
		// 음식 상세 정보 세팅
		Food food = service.search(code);
		model.addAttribute("food", food);
		// 사용자가 존재할시 알레르기 정보 표시
		Member m = (Member)session.getAttribute("m");
		if(m != null) {
			// 알레르기 목록 세팅
			StringBuilder sb = new StringBuilder();
			if(m.getAllergies() != null) {
				for(String allergy : m.getAllergies()) {
					if(food.getMaterial().contains(allergy)) {
						sb.append(allergy + " ");
					}
				}
				food.setAllergy(sb.toString());
			}
		}
		return "fooddetail/detail";
	}
	
	@RequestMapping(value = "/myfoodlist.mvc", method = RequestMethod.GET)
	public String myFoodList(Model model, HttpSession session) {
		// session에 사용자 정보가 존재하는지 확인
        String id = (String) session.getAttribute("id");
        // 사용자 정보가 존재할 경우
        if (id != null) {
        	// 사용자 섭취 목록 반환
        	List<Pair> codeDates = mservice.getFoods(id);	
        	// 섭취 목록 코드에 따라 Food 정보 목록 추출
        	List<Food> list = new ArrayList<Food>();
        	List<FoodBean> myfood = service.searchmyfoodall(id);
        	List<String> datesList = new ArrayList<String>();
        	for(Pair codeDate : codeDates) {
        		list.add(service.search(codeDate.getFirst()));
        		datesList.add(codeDate.getSecond());
        	}
        	
        	// 사용자가 추가한 식품정보 목록 세팅
        	model.addAttribute("mainList", list);
        	model.addAttribute("datesList", datesList);
    		return "main/myfoodlist";
        }
		return "main/index";
	}
	
	@RequestMapping(value = "/qna.mvc", method = RequestMethod.GET)
	public String qna(Model model, HttpSession session) {
		// session에 사용자 정보가 존재하는지 확인
        String id = (String) session.getAttribute("id");
        // 사용자 정보가 존재할 경우

		return "qna/index";
	}


	@RequestMapping(value = "/foodBest.mvc", method = RequestMethod.GET)
	public String foodBest(Model model, HttpSession session) {
		List<FoodBean> list = service.searchBest();
		
	    model.addAttribute("firstName", list.get(0).getName());
	    model.addAttribute("secondName", list.get(1).getName());
	    model.addAttribute("thirdName", list.get(2).getName());
	    model.addAttribute("fourthName", list.get(3).getName());
	    model.addAttribute("fifthName", list.get(4).getName());
	    
	    model.addAttribute("firstCount", list.get(0).getCount());
	    model.addAttribute("secondCount", list.get(1).getCount());
	    model.addAttribute("thirdCount", list.get(2).getCount());
	    model.addAttribute("fourthCount", list.get(3).getCount());
	    model.addAttribute("fifthCount", list.get(4).getCount());
	    
	    model.addAttribute("mainList", list);
		return "foodlist/foodBest";
	}
	@RequestMapping(value = "/myjjimdetail.mvc", method = RequestMethod.GET)
	public String myJJimList(Model model, HttpSession session) {
		// session에 사용자 정보가 존재하는지 확인
        String id = (String) session.getAttribute("id");
        // 사용자 정보가 존재할 경우
        if (id != null) {
        	// 사용자 섭취 목록 반환
        	List<String> codes = mservice.getJJim(id);	
        	
        	// 섭취 목록 코드에 따라 Food 정보 목록 추출
        	List<Food> list = new ArrayList<Food>();
        	for(String code : codes) {
        		list.add(service.search(code));
        	}
        	// 사용자가 추가한 식품정보 목록 세팅
        	double total_calory = 0.0;
        	double total_carbo = 0.0;
        	double total_protein = 0.0;
        	double total_fat = 0.0;
        	double total_sugar = 0.0;
        	double total_natrium = 0.0;
        	
        	
        	for (int i = 0; i < list.size(); i++) {
        		total_calory += list.get(i).getCalory();
        		total_carbo += list.get(i).getCarbo();
        		total_protein += list.get(i).getProtein();
        		total_fat += list.get(i).getFat();
        		total_sugar += list.get(i).getSugar();
        		total_natrium += list.get(i).getNatrium();
			}
        	JJim totaln = new JJim(total_calory, total_carbo, total_protein, total_fat, total_sugar, total_natrium);
        	
        	model.addAttribute("totaln", totaln);
        	model.addAttribute("jjimlist", list);
        	
    		return "main/my_jjim_Detail";
        }
		return "main/index";
	}
	
	@RequestMapping(value = "/detailjjim.mvc", method = RequestMethod.GET)
	public String detailjjim(HttpSession session, Model model, String name) {
		// 조회할 식품 코드 정보 추출
		// 음식 상세 정보 세팅
		Food food = service.searchName(name);
		model.addAttribute("foods", food);
		// 사용자가 존재할시 알레르기 정보 표시
		Member m = (Member)session.getAttribute("m");
		if(m != null) {
			// 알레르기 목록 세팅
			StringBuilder sb = new StringBuilder();
			if(m.getAllergies() != null) {
				for(String allergy : m.getAllergies()) {
					if(food.getMaterial().contains(allergy)) {
						sb.append(allergy + " ");
					}
				}
				food.setAllergy(sb.toString());
			}
		}
		return "fooddetail/detail";
	}
	@RequestMapping(value = "/deleteMyFood.mvc", method = RequestMethod.GET)
	public String deleteMyFood(String code, String date) {
		
//		date = service.searchmyfood(code).getDate();
		System.out.println(date.replace("%20", " "));
		service.delete(code, date.replace("%20", " "));
		return"redirect:/myfoodlist.mvc";
	}
	
	
}