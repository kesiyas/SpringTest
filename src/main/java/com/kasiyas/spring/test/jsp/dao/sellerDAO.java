package com.kasiyas.spring.test.jsp.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface sellerDAO {

	public int insertSeller(
			@Param("nickname") String nickname
			, @Param("profileImage") String profileImage
			, @Param("temperature") double temperature
			);
	
}
