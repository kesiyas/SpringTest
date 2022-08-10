package com.kasiyas.spring.test.realtor.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kasiyas.spring.test.realtor.dao.RealtorDAO;
import com.kasiyas.spring.test.realtor.model.Realtor;

@Service
public class RealtorBO {
	@Autowired
	private RealtorDAO realtorDAO;
	
	public int addRealtor(Realtor realtor) {
		
		return realtorDAO.insertRealtor(realtor);
	}
	
	public int deleteRealtor(int id) {
		
		return realtorDAO.deleteRealtor(id);
	}
}
