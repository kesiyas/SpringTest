package com.kasiyas.spring.test.jsp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kasiyas.spring.test.jsp.model.seller;

@Repository
public interface sellerDAO {

	public int insertSeller(
			@Param("nickname") String nickname
			, @Param("profileImage") String profileImage
			, @Param("temperature") double temperature
			);
	
	public seller selectSellerByObject();
	
	public seller selectSeller(@Param("id") int id);
}
