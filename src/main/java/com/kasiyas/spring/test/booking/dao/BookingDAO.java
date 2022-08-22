package com.kasiyas.spring.test.booking.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kasiyas.spring.test.booking.model.Booking;

@Repository
public interface BookingDAO {

	public List<Booking> selectBooking();	
}
