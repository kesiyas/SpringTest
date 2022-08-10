package com.kasiyas.spring.test.realtor.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kasiyas.spring.test.realtor.model.Realtor;

@Repository
public interface RealtorDAO {

	public int insertRealtor(Realtor realtor);
	
	public int deleteRealtor(@Param("id") int id);
}
