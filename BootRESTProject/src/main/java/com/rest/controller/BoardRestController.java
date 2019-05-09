package com.rest.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.mybatis.service.BoardService;
import com.mybatis.service.CustomerService;
import com.mybatis.vo.Board;

//@RestController : @Controller + @ResponseBody
@RestController
public class BoardRestController {
	
//	//localhost:8080/rest/boards
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	@ResponseBody //서버가 응답으로 보내주는 json형식의 데이터를 자바 객체로 변환시켜 달라는 어노테이션
//	public String home() {
//		
//		return "home";
//	}
	@Autowired
	BoardService service;
	@RequestMapping(value = "/boards", method = RequestMethod.GET)
	public List<Board> allBoards() {
		return service.selectAll();
	}
	@RequestMapping(value = "/boards/{num}", method = RequestMethod.GET)
	public Board oneboards(@PathVariable String num) {
		return service.selectOne(num);
	}
	@RequestMapping(value = "/boards/{num}", method = RequestMethod.DELETE)
	public String deleteBoards(@PathVariable String num) {
		service.delete(num);
		return "delete board:"+num;
	}
	@RequestMapping(value = "/boards", method = RequestMethod.POST)
//	,headers= {"Context-type=application/json"})
	public Map insertBoards(@RequestBody Board b) {
		service.insert(b);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "insert success: "+b.getNum());
		return map;
	}
	@RequestMapping(value = "/boards", method = RequestMethod.PUT)
//			,headers= {"Context-type=application/json"})
	public Map updateBoards(@RequestBody Board b) {
		service.update(b);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "update success: "+b.getNum());
		return map;
	}
	
	@RequestMapping(value = "/boards/{find}/{val}", method = RequestMethod.GET)
	public List<Board> findByName(@PathVariable String find, @PathVariable String val) {
		if(find.equals("name")) return service.findByName("%"+val+"%");
		else return service.findByTitle("%"+val+"%");
	}
	

}
