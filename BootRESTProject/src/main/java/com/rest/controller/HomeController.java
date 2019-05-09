package com.rest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

//@RestController : @Controller + @ResponseBody
@RestController
public class HomeController {
	
//	//localhost:8080/rest/users
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	@ResponseBody //서버가 응답으로 보내주는 json형식의 데이터를 자바 객체로 변환시켜 달라는 어노테이션
//	public String home() {
//		
//		return "home";
//	}
	
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String allUsers() {
		return "all users";
	}
	@RequestMapping(value = "/users/{id}", method = RequestMethod.GET)
	public String oneUsers(@PathVariable String id) {
		return "one user:"+id;
	}
	@RequestMapping(value = "/users/{id}", method = RequestMethod.DELETE)
	public String deleteUsers(@PathVariable String id) {
		return "delete user:"+id;
	}
	@RequestMapping(value = "/users", method = RequestMethod.POST)
//	,headers= {"Context-type=application/json"})
	public String insertUsers() {
		return "insert user";
	}
	@RequestMapping(value = "/users", method = RequestMethod.PUT)
//			,headers= {"Context-type=application/json"})
	public String updateUsers() {
		return "update user";
	}
}
