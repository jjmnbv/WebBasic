package com.jckj.webbasic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class IndexController {
	@RequestMapping("/index")
	public String index(SessionStatus status) {
		return "/index";
	}
}
