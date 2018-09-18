package com.sillybin.xmall.transmission;

import java.util.List;

import com.sillybin.xmall.entity.Menu;
import com.sillybin.xmall.entity.Role;

public interface MenuTransmission {

	public List<Menu> getMenuForIndex(Role role) throws Exception;
}
