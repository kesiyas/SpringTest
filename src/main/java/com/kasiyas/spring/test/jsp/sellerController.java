package com.kasiyas.spring.test.jsp;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kasiyas.spring.test.jsp.bo.sellerBO;
import com.kasiyas.spring.test.jsp.model.seller;

@Controller
@RequestMapping("/jsp/seller")
public class sellerController {
	
	@Autowired
	private sellerBO sellerBO;

	@PostMapping("/add")
	@ResponseBody
	public String addSeller(
			@Param("nickname") String nickname
			, @Param("profileImage") String profileImage
			, @Param("temperature") double temperature)
	{
		int count = sellerBO.addSeller(nickname, profileImage, temperature);
		
		return "수행 결과 : " + count;
	}
	
	@RequestMapping("/input")
	public String sellerInput() {
		return "jsp/sellerInput";
	}
	
	
	@GetMapping("/lastseller")
	public String lastseller(Model model, 
			@RequestParam(value="id", required=false) Integer id) {
		
		model.addAttribute("title", "판매자 정보");
		
		if(id == null) {
			seller seller = sellerBO.lastSeller();
			model.addAttribute("seller", seller);		
		} else {
			seller seller2 = sellerBO.lastSeller(id);
			model.addAttribute("seller", seller2);		
		}
						
		return "jsp/sellerInfo";
	}
	
}
