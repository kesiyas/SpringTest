package com.kasiyas.spring.test.booking;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@GetMapping("/delete")
	@ResponseBody
	public Map<String, String> deleteBooking(@RequestParam("id") int id){
		
		Map<String, String> map = new HashMap<>();
		
		if(bookingBO.deleteBooking(id) == 1) {
			map.put("result", "success");
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	
	@GetMapping("/add")
	@ResponseBody
	public Map<String, String> addBooking(
			@RequestParam("name") String name
			, @DateTimeFormat(pattern="yyyy년 MM월 dd일") @RequestParam("date") Date date
			, @RequestParam("day") int day
			, @RequestParam("headcount") int headcount
			, @RequestParam("phoneNumber") String phoneNumber) {
		
		Map<String, String> map = new HashMap<>();
		
		if(bookingBO.addBooking(name, date, day, headcount, phoneNumber) == 1) {
			map.put("result", "success");
		} else {
			map.put("result", "fail");
		}
		
		return map;
	}
}
