package com.kasiyas.spring.test.mybatis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kasiyas.spring.test.mybatis.model.RealEstate;

@Repository
public interface RealEstateDAO {

	public RealEstate selectRealEstate(@Param("id") int id);
	
	public List<RealEstate> selectRealEstateList(@Param("rent") int rent);
	
	public List<RealEstate> selectRealEstateList2(@Param("area") int area, @Param("price") int price);
	
	public int insertRealEstate(RealEstate realEstate);
	
	public int insertRealEstate2(
			@Param("realtorId") int realtorId,
			)
	
}
