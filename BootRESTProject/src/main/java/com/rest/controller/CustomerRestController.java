package com.rest.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.mybatis.service.CustomerService;
import com.mybatis.vo.Customer;

//@RestController : @Controller + @ResponseBody
@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
public class CustomerRestController {
	
//	//localhost:8080/rest/customers
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	@ResponseBody //������ �������� �����ִ� json������ �����͸� �ڹ� ��ü�� ��ȯ���� �޶�� ������̼�
//	public String home() {
//		
//		return "home";
//	}
	
	@Autowired
	CustomerService service;
	
	@RequestMapping(value = "/customers", method = RequestMethod.GET)
	public List<Customer> allCustomers() {
		return service.selectAll();
	}
	@RequestMapping(value = "/customers/{num}", method = RequestMethod.GET)
	public Customer oneCustomer(@PathVariable String num) {
		return service.selectOne(num);
	}
	@RequestMapping(value = "/customers/{num}", method = RequestMethod.DELETE)
	public void deleteCustomers(@PathVariable String num) {
		service.delete(num);
	}
	@RequestMapping(value = "/customers", method = RequestMethod.POST, produces= {"application/json;charset=euc-kr"})
//	,headers= {"Context-type=application/json"})
	public Map insertCustomers(@RequestBody Customer c) { //@RequestBody: request�� ����� ������ ���۵Ǵ� ������(json)�� �ڹ� ��ü�� ��ȯ����. json->java
		service.insert(c);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "insert success: "+c.getNum());
		return map;
	}

	@RequestMapping(value = "/customers", method = RequestMethod.PUT, produces= {"application/json;charset=euc-kr"})
	public Map updateCustomers(@RequestBody Customer c) { //@RequestBody: request�� ����� ������ ���۵Ǵ� ������(json)�� �ڹ� ��ü�� ��ȯ����. json->java
		service.update(c);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "update success: "+c.getNum());
		return map;
	}
}
