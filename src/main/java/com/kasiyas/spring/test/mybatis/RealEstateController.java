package com.kasiyas.spring.test.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kasiyas.spring.test.mybatis.bo.RealEstateBO;
import com.kasiyas.spring.test.mybatis.model.RealEstate;

@RequestMapping("/mybatis")
@Controller
public class RealEstateController {

	@Autowired
	RealEstateBO realEstateBO;
	
	@RequestMapping("/test01/1")
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
	
	@RequestMapping("/test01/2")
	@ResponseBody
	public List<RealEstate> realestate2(@RequestParam("rent") int rent) {
		
		List<RealEstate> realEstate = realEstateBO.getRealEstate2(rent);
		
		return realEstate;
	}
	
	@RequestMapping("/test01/3")
	@ResponseBody
	public List<RealEstate> realestate3(@RequestParam("area") int area, @RequestParam("price") int price) {
		
		List<RealEstate> realEstate = realEstateBO.getRealEstate3(area, price);
		
		return realEstate;
	}
	
	@ResponseBody
	@RequestMapping("/test02/4")
	public String addRealEstate() {
		RealEstate realEstate = new RealEstate();
		
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		
		
		int count = realEstateBO.addRealEstate(realEstate);
		
		return "삽입 결과 : " + count;
		
	}
	
	@RequestMapping("/test02/5")
	@ResponseBody
	public String addRealEstate(@RequestParam("realtorId") int realtorId) {
		
//		address : 썅떼빌리버 오피스텔 814호
//		area : 45
//		type : 월세
//		price : 100000
//		rentPrice : 120
		
		int count = realEstateBO.addRealEstate(realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
		
		return "실행결과 : " + count;
	}
	
	@RequestMapping("/test03/1")
	@ResponseBody
	public String updateRealEstate(@Param("id") int id,@Param("type") String type, @Param("price") int price) {
		
		int count = realEstateBO.updateRealEstate(id, type, price);
		
		return "수정 성공 : " + count;
	}
	
	@RequestMapping("/test04/1")
	@ResponseBody
	public String deleteRealEstate(@Param("id") int id) {
		
		int count = realEstateBO.deleteRealEstate(id);
		
		return "삭제 성공: " + count;
	}
	
	
}
