package com.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mvc.service.JJimService;
import com.mvc.vo.JJim;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
public class JJimRestController {

	@Autowired
	JJimService service;

	@RequestMapping(value = "/jjim", method = RequestMethod.GET)
	public List<JJim> alljjim(HttpSession session) {
		String id = (String) session.getAttribute("id");
		
		
		List<JJim> a = service.selectAll(id);
		
//		for (int i = 0; i < a.size(); i++) {
//			if(a.get(i)==null) continue;
//			System.out.println(a.get(i).toString());
//		}

		return a;
	}

	@RequestMapping(value = "/jjim/{name}", method = RequestMethod.DELETE)
	public void deleteCustomer(@PathVariable String name) {
		
		
		String code = service.findbyName(name);
		
		service.delete(code);

	}

}