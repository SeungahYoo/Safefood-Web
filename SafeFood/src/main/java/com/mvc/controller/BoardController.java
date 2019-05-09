package com.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.service.BoardService;
import com.mvc.vo.Board;


@Controller
public class BoardController {
	@Autowired
	BoardService bservice;

	@RequestMapping(value = "notice.mvc", method = RequestMethod.GET)
	public String index(Model model) { // ���̺���� ��� ������ �˻��ؼ� ����
		List<Board> list = bservice.selectAll();
		model.addAttribute("list", list);
		return "board/index";
	}

//	@RequestMapping(value = "loginProcess.mvc", method = RequestMethod.POST)
//	public String loginProcess(HttpSession session, String id, String pass) { // ���̺���� ��� ������ �˻��ؼ� ����
//		System.out.println(id);
//		int ret = bservice.login(id, pass);
//		if (ret >= 1) {
//			session.setAttribute("id", id);
//		} else {
//			System.out.println("�α��� ����");
//		}
//		return "redirect:/index.mvc";
//	}
//
//	@RequestMapping(value = "logout.mvc", method = RequestMethod.GET)
//	public String logout(HttpSession session) { // ���̺���� ��� ������ �˻��ؼ� ����
//		session.setAttribute("id", null);
//		// session.setAttribute("id", id);
//		return "redirect:/index.mvc";
//	}

	@RequestMapping(value = "read.mvc", method = RequestMethod.GET)
//	public String detail(Model model, String num) {//���̺���� ��� ������ �˻��ؼ� �������ش�.
	public String detail(Model model, @RequestParam(value = "num") String number) {// ���̺���� ��� ������ �˻��ؼ� �������ش�.
		Board b = bservice.selectOne(number);
		model.addAttribute("b", b);
		return "board/detail";
	}

	@RequestMapping(value = "boardInsert.mvc", method = RequestMethod.GET)
	public String insert(Board b) {// Model ��ü
		return "board/insert";
	}

	@RequestMapping(value = "boardInsert.mvc", method = RequestMethod.POST)
	public String insertProcess(Model model, Board b) {
		bservice.insert(b);
		model.addAttribute("b", b);
		return "board/insertSuccess";
	}

	@RequestMapping(value = "boardDelete.mvc", method = RequestMethod.GET)
	public String delete(String num) {
		bservice.delete(num);
		return "redirect:/notice.mvc";
	}

	@RequestMapping(value = "boardModify.mvc", method = RequestMethod.GET)
	public String modify(Model model, String num) {// Model ��ü
		Board b = bservice.selectOne(num);
		model.addAttribute("b", b);
		return "board/modify";
	}

	@RequestMapping(value = "boardModify.mvc", method = RequestMethod.POST)
	public String modifyProcess(Model model, Board b) {
		bservice.update(b);
		model.addAttribute("b", b);
		return "board/modifySuccess";
	}

	@RequestMapping(value = "boardFind.mvc", method = RequestMethod.POST)
	public String modifyProcess(Model model, String word, String col) {
		List<Board> list = null;
		if (col.equals("name")) {
			list = bservice.findByName('%' + word + '%');
		} else if (col.equals("title")) {
			list = bservice.findByTitle('%' + word + '%');
		}
		else {
			list = bservice.selectAll();
		}
		model.addAttribute("list", list);
		return "board/index";
	}
	
	@ExceptionHandler(Exception.class)
	public String handler() {
		return "board/error";
	}

}
