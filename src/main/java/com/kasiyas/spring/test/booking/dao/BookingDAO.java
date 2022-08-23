package com.kasiyas.spring.test.booking.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.kasiyas.spring.test.booking.model.Booking;

@Repository
public interface BookingDAO {

	public List<Booking> selectBooking();	
	
	public int deleteBooking(@Param("id") int id);
	
	public int insertBooking(@Param("name") String name
			, @Param("date") Date date
			, @Param("day") int day
			, @Param("headcount") int headcount
			, @Param("phoneNumber") String phoneNumber
			, @Param("state") String state);
	
	public Booking selectBookingByObject(
			@Param("name") String name
			, @Param("phoneNumber") String phoneNumber);
}
