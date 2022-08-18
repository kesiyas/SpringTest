package com.kasiyas.spring.test.ajax;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kasiyas.spring.test.ajax.bo.BookmarkBO;
import com.kasiyas.spring.test.ajax.model.Bookmark;

@Controller
@RequestMapping("ajax/test01")
public class BookmarkController {
	@Autowired
	BookmarkBO bookmarkBO;

	@GetMapping("/list")
	public String bookmarkList(Model model) {
		
		List<Bookmark> bookmarkList = bookmarkBO.bookmarkList();
		
		model.addAttribute("bookmarkList", bookmarkList);
		
		return "ajax/test01";
	}
	
	@GetMapping("/input")
	public String bookmarkInput() {
		
		return "ajax/test01_Input";
	}
	
	@GetMapping("/add")
	public String addBookmark(
			@RequestParam("name") String name
			, @RequestParam("url") String url) {
		
		int count = bookmarkBO.addBookmark(name, url);
		
		return "redirect:/ajax/test01/list";
		
	}
	
	
	
	
}
