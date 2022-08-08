package com.kasiyas.spring.test.mybatis.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kasiyas.spring.test.mybatis.dao.RealEstateDAO;
import com.kasiyas.spring.test.mybatis.model.RealEstate;

@Service
public class RealEstateBO {

	@Autowired
	RealEstateDAO realEstateDAO;
	
	public RealEstate getRealEstate(int id) {
		
		RealEstate realEstate = realEstateDAO.selectRealEstate(id);
		
		return realEstate;
		
	}
	
	public List<RealEstate> getRealEstate2(int rent) {
		
		List<RealEstate> realEstate = realEstateDAO.selectRealEstateList(rent);
		return realEstate;
	}
	
	public List<RealEstate> getRealEstate3(int area, int price) {
		
		return realEstateDAO.selectRealEstateList2(area, price);
		
	}
	
	public int addRealEstate(RealEstate realEstate) {
		
		return realEstateDAO.insertRealEstate(realEstate);
		
	}
	
	public int addRealEstate2(int realtorId, String address, int area,
			String type, int price, int rentPrice) {
		
		return 
	}
	
}
