package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	
	@RequestMapping("/usr/home/workingProcess")
	public String workingProcess() {

		return "/usr/home/workingProcess";
	}

}
