package com.sillybin.xmall.transmission.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.alibaba.dubbo.config.annotation.Service;
import com.sillybin.xmall.entity.Menu;
import com.sillybin.xmall.entity.Role;
import com.sillybin.xmall.service.MenuService;
import com.sillybin.xmall.transmission.MenuTransmission;
@Component("menuTransmission")
@Service(version="1.0.0")
public class MenuTransmissionImpl implements MenuTransmission {
	@Resource(name="menuService")
	private MenuService menuService;

	public List<Menu> getMenuForIndex(Role role) throws Exception {
		return menuService.getMenuForIndex(role);
	}
}
