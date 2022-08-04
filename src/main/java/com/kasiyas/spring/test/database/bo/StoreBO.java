package com.kasiyas.spring.test.database.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kasiyas.spring.test.database.dao.StoreDAO;
import com.kasiyas.spring.test.database.model.Store;

@Service
public class StoreBO {

	@Autowired
	private StoreDAO storeDAO;

	public List<Store> getStoreList() {
		List<Store> storeList = storeDAO.selectStoreList();
		return storeList;
		
	}
	
}
