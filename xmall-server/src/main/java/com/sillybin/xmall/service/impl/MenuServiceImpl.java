package com.sillybin.xmall.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.sillybin.xmall.dao.MenuDao;
import com.sillybin.xmall.entity.Menu;
import com.sillybin.xmall.entity.Role;
import com.sillybin.xmall.service.MenuService;
@Service("menuService")
@Transactional
public class MenuServiceImpl implements MenuService {
	@Resource(name="menuDao")
	private MenuDao menuDao;

	public List<Menu> getMenuForIndex(Role role) throws Exception {
		// 获取一级菜单
		List<Menu> menuList = menuDao.findMenuListByParentAndRole(0l, role.getRoleId());
		if (menuList != null && menuList.size() > 0) {
			for (Menu menu : menuList) {
				List<Menu> secondMenuList = menuDao.findMenuListByParentAndRole(menu.getMenuId(), role.getRoleId());
				menu.setMenuList(secondMenuList);
			}
		}
		return menuList;
	}
}
