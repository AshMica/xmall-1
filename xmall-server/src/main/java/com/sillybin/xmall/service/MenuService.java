package com.sillybin.xmall.service;

import java.util.List;

import com.sillybin.xmall.entity.Menu;
import com.sillybin.xmall.entity.Role;

public interface MenuService {
	public List<Menu> getMenuForIndex(Role role) throws Exception;
}
