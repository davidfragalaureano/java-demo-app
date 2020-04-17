package com.david.demo.controllers;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

	@RequestMapping("/")
	public String index() {
		return "This is just a simple app in spring boot";
	}

    @RequestMapping("/ping")
	public String ping() {
		return "pong";
	}

}