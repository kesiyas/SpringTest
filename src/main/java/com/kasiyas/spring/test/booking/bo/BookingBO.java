package com.kasiyas.spring.test.booking.bo;

import java.util.Date;
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
	
	public int deleteBooking(int id) {
		
		return bookingDAO.deleteBooking(id);
	}
	
	public int addBooking(String name
			, Date date
			, int day
			, int headcount
			, String phoneNumber) {
		
		return bookingDAO.insertBooking(name, date, day, headcount, phoneNumber, "대기중");
	}
	
	public Booking reservationInqury(String name, String phoneNumber) {
		
		return bookingDAO.selectBookingByObject(name, phoneNumber);
	}
}
