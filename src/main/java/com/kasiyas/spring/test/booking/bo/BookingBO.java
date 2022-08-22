package com.kasiyas.spring.test.booking.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kasiyas.spring.test.booking.dao.BookingDAO;
import com.kasiyas.spring.test.booking.model.Booking;

@Service
public class BookingBO {
	@Autowired
	BookingDAO bookingDAO;
	
	public List<Booking> bookingList(){
		
		return bookingDAO.selectBooking();
	}
	
}
