package com.kasiyas.spring.test.realtor;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kasiyas.spring.test.realtor.bo.RealtorBO;
import com.kasiyas.spring.test.realtor.model.Realtor;

@Controller
@RequestMapping("/jsp/realtor")
public class RealtorController {

	@Autowired
	private RealtorBO realtorBO;
	
	@GetMapping("/input")
	public String realtorInput() {
		
		return "jsp/realtor";
	}
	
	
	@PostMapping("/add/view")
	public String addRealtor(
			@ModelAttribute Realtor realtor
			, Model model) {  
		
		int count = realtorBO.addRealtor(realtor);
		
		model.addAttribute("realtor", realtor);
		
		return "jsp/realtorInfo";
				
	}
	
	@ResponseBody
	@RequestMapping("/delete")
	public String deleteRealtor(@Param("id") int id) {
		
		int count = realtorBO.deleteRealtor(id);
		
		return "삭제 결과 : " + count;
	}
	
	
}
