package com.kasiyas.spring.test.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kasiyas.spring.test.booking.bo.BookingBO;
import com.kasiyas.spring.test.booking.model.Booking;

@Controller
@RequestMapping("/booking")
public class BookingController {
	@Autowired
	BookingBO bookingBO;
	
	@GetMapping("/page")
	public String page() {
		return "reservation/test04";
	}
	
	
	@GetMapping("/input")
	public String inputPage() {
		return "reservation/test04_input";
		
	}
	
	@GetMapping("/list")
	public String bookingList(Model model) {
		
		List<Booking> bookingList = bookingBO.bookingList();
		
		model.addAttribute("bookingList", bookingList);
		
		return "reservation/test04_list";
	}
}
