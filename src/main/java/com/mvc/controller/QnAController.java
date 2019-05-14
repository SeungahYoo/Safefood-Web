package com.mvc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mvc.service.QnAService;
import com.mvc.vo.QnA;


@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
public class QnAController {

	@Autowired
	QnAService service;

	// http://localhost:7070/rest/customers
	@RequestMapping(value = "/qna", method = RequestMethod.GET) // ���� �ڹٷ� �������� �ʴ� json���� �ٲ�� �Ҷ���
																// response.body������̼� �߰��ؾ餤��.
	public List<QnA> allQnA() {

		return service.selectAll();
	}

	@RequestMapping(value = "/qna/{num}", method = RequestMethod.GET)
	public QnA oneQnA(@PathVariable String num) {

		return service.selectOne(num);
	}

	@RequestMapping(value = "/qna/{find}/{val}", method = RequestMethod.GET)
	public List<QnA> findByName(@PathVariable String find, @PathVariable String val) {
		if (find.equals("ID")) {
			return service.findByID("%" + val + "%");
		} else
			return service.findByTitle("%" + val + "%");

	}

	@RequestMapping(value = "/qna/{num}", method = RequestMethod.DELETE)
	public String deleteQnA(@PathVariable String num) {
		service.delete(num);
		;
		return "delete success";
	}

	@RequestMapping(value = "/qna", method = RequestMethod.POST, produces = { "application/json;charset=euc-kr" }) // headers=
																													// {"Content-type=applicatoin/json"}
	public Map insertQnA(@RequestBody QnA b) {// @RequestBody:Request�� ����� ������ ���۵Ǵ� ������(json)�� �ڹ� ��ü��
												// ��ȯ�� ��. json->java
		service.insert(b);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "insert success");
		return map;
	}

	@RequestMapping(value = "/qna", method = RequestMethod.PUT, produces = { "application/json;charset=euc-kr" }) // ,headers=
																													// {"Content-type=applicatoin/json"}
	public Map updateQnA(@RequestBody QnA b) {
//		if (b.getAnswer()==null) { //질문 수정
		service.update(b);
//		} else { //답변 등록
//			service.ansUpdate(b.getNum(), b.getAnswer());
//		}
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "update success");
		return map;
	}

	@RequestMapping(value = "/qna/{num}/{answer}", method = RequestMethod.PUT, produces = { "application/json;charset=euc-kr" }) // ,headers=
	// {"Content-type=applicatoin/json"}
	public Map updateAnswer(@PathVariable  String num, @PathVariable String answer) {
		System.out.println("hello"+num+" "+answer);
		service.ansUpdate(num, answer);

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "answer update success");
		return map;
	}

}