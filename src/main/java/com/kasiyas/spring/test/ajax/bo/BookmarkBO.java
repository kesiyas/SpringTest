package com.kasiyas.spring.test.ajax.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kasiyas.spring.test.ajax.dao.BookmarkDAO;
import com.kasiyas.spring.test.ajax.model.Bookmark;

@Service
public class BookmarkBO {
	@Autowired
	BookmarkDAO bookmarkDAO;

	public List<Bookmark> bookmarkList(){
		
		return bookmarkDAO.selectBookmark();
	}
	
	public int addBookmark(String name, String url) {
		
		return bookmarkDAO.insertBookmark(name, url);
	}
}
