package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrHomeController {

	@RequestMapping("/usr/home/main")
	public String showMain() {

		return "/usr/home/main";
	}

	@RequestMapping("/")
	public String showRoot() {

		return "redirect:/usr/home/main";
	}

	@RequestMapping("/usr/home/about")
	public String about() {

		return "/usr/home/about";
	}

	@RequestMapping("/usr/home/contact")
	public String showContact() {

		return "/usr/home/contact";
	}

}
