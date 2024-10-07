package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.MemberDto;
import com.example.demo.mapper.MemberLoginMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberLoginController {

	@Autowired
	MemberLoginMapper mapper;
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/member")
	public String member() {
		return "member";
	}
	
	@RequestMapping("/useridcheck")
	@ResponseBody
	public String useridcheck(HttpServletRequest request) {
		String userid=request.getParameter("userid");
		if(mapper.useridCheck(userid)) {
			return "1";
		} else {
			return "0";
		}
	}
	
	@RequestMapping("/memberOk")
	public String memberOk(MemberDto mdto) {
		mapper.memberOk(mdto);
		return "redirect:/login";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/loginOk")
	public String loginOk(MemberDto mdto, HttpSession session) {
		if(mapper.loginOk(mdto)) {
			session.setAttribute("userid", mdto.getUserid());
			return "redirect:/index";
		}else {
			return "redirect:/login?err=1";
		}
		
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	
}
