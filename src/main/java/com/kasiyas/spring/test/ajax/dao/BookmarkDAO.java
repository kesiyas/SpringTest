package com.kasiyas.spring.test.ajax.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kasiyas.spring.test.ajax.model.Bookmark;

@Repository
public interface BookmarkDAO {

	public List<Bookmark> selectBookmark();
	
	public int insertBookmark(@Param("name") String name, @Param("url") String url);
}
