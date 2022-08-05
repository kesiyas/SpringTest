package com.kasiyas.spring.test.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kasiyas.spring.test.mybatis.bo.RealEstateBO;
import com.kasiyas.spring.test.mybatis.model.RealEstate;

@RequestMapping("/mybatis/test01")
@Controller
public class RealEstateController {

	@Autowired
	RealEstateBO realEstateBO;
	
	@RequestMapping("/1")
	@ResponseBody
	public RealEstate realestate(
			@RequestParam("id") int id
//			@RequestParam(value="id", required=true) int id
			// 필수 항목이 아닌 파라미터 설정
//			@RequestParam(value="id", required=false) Integer id
//			@RequestParam(value="id", defaultValue="3") int id
			) { 
		
		RealEstate realEstate = realEstateBO.getRealEstate(id);
		
		return realEstate;
	}
	
	@RequestMapping("/2")
	@ResponseBody
	public List<RealEstate> realestate2(@RequestParam("rent") int rent) {
		
		List<RealEstate> realEstate = realEstateBO.getRealEstate2(rent);
		
		return realEstate;
	}
	
	@RequestMapping("/3")
	@ResponseBody
	public List<RealEstate> realestate3(@RequestParam("area") int area, @RequestParam("price") int price) {
		
		List<RealEstate> realEstate = realEstateBO.getRealEstate3(area, price);
		
		return realEstate;
	}
	
	public String addRealEstate() {
		RealEstate realEstate = new RealEstate();
		
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		
		
		
		return "삽입 결과 : " + count;
		
	}
	
	
	
}
