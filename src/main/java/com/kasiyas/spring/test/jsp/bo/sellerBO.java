package com.kasiyas.spring.test.jsp.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kasiyas.spring.test.jsp.dao.sellerDAO;
import com.kasiyas.spring.test.jsp.model.seller;

@Service
public class sellerBO {

	@Autowired
	private sellerDAO sellerDao;
	
	public int addSeller(String nickname, String profileImage, double temperature) {
		
		return sellerDao.insertSeller(nickname, profileImage, temperature);
	}
	
	public seller lastSeller() {
		
		return sellerDao.selectSellerByObject();
	}
	
	public seller lastSeller(int id) {
		
		return sellerDao.selectSeller(id);
	}
	
	
}
