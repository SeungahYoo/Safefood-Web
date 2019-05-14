package com.mvc.controller;

import java.util.List;

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
	public List<JJim> allCustomers() {
		System.out.println("sdassd");
		List<JJim> a = service.selectAll();
		for (int i = 0; i < a.size(); i++) {
			System.out.println(a.get(i).getName());
		}

		return a;
	}

	@RequestMapping(value = "/jjim/{code}", method = RequestMethod.DELETE)
	public void deleteCustomer(@PathVariable String code) {
		service.delete(code);

	}

}