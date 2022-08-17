package com.kasiyas.spring.test.database;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kasiyas.spring.test.database.bo.StoreBO;
import com.kasiyas.spring.test.database.model.Store;

@Controller
@RequestMapping("/jstl/test06")
public class StoreController {

	@Autowired
	private StoreBO storeBO;
	
	@GetMapping("/select")
	public String test01() {
		
		List<Store> storeList = storeBO.getStoreList();
		
		return "jstl/test06";
		
		
	}
	
}
