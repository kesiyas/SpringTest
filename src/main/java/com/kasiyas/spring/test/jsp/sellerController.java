package com.kasiyas.spring.test.jsp;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;

@Controller
public class sellerController {

	public String addSeller(
			@Param("nickname") String nickname
			, @Param("profileImage") String profileImage
			, @Param("temperature") double temperature)
	{
		
	}
	
}
