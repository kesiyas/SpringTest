package com.kasiyas.spring.test.ajax;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kasiyas.spring.test.ajax.bo.BookmarkBO;
import com.kasiyas.spring.test.ajax.model.Bookmark;

@Controller
@RequestMapping("/ajax/bookmark")
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
	
	@PostMapping("/add")
	@ResponseBody
	public Map<String, String> addBookmark(
			@RequestParam("name") String name
			, @RequestParam("url") String url) {
		
		int count = bookmarkBO.addBookmark(name, url);
		
		Map<String, String> map = new HashMap<>();
		
		if(count == 1) {
			map.put("result", "success");
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	
	@PostMapping("/isduplicate")
	@ResponseBody
	public Map<String, Boolean> isDuplicate(@RequestParam("url") String url){
				
		Map<String, Boolean> map = new HashMap<>();
		
		map.put("is_duplicate", bookmarkBO.isDuplicate(url));
			
		return map;			
	}
	
	@GetMapping("/deleteData")
	@ResponseBody
	public Map<String, String> deleteBookmark(@RequestParam("id") int id) {
		
		Map<String, String> map = new HashMap<>();

		if(bookmarkBO.deleteBookmark(id) == 1) {
			map.put("result", "success");
		} else	{
			map.put("result", "fail");		
		}
		
		return map;
	}
	
	
}
