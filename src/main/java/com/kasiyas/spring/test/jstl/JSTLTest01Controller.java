package com.kasiyas.spring.test.jstl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jstl/test01")
public class JSTLTest01Controller {

	@GetMapping("/1")
	public String jstlTest01() {
		return "jstl/test01";
	}
	
	
}
