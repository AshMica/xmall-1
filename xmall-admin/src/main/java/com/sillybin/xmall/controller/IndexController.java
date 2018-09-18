package com.sillybin.xmall.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.dubbo.config.annotation.Reference;
import com.sillybin.xmall.base.controller.BaseController;
import com.sillybin.xmall.entity.Menu;
import com.sillybin.xmall.entity.Role;
import com.sillybin.xmall.entity.User;
import com.sillybin.xmall.transmission.MenuTransmission;
import com.sillybin.xmall.transmission.UserTransmission;

@Controller("indexController")
public class IndexController extends BaseController {
	@Reference(version="1.0.0")
	private UserTransmission userTransmission;
	@Reference(version="1.0.0")
	private MenuTransmission menuTransmission;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView getIndex() throws Exception {
		User user = (User) session.getAttribute("user");
		Role role = userTransmission.getUserByUserId(user.getUserId()).getRole();
		List<Menu> menuList = menuTransmission.getMenuForIndex(role);
		return new ModelAndView("index", "menuList", menuList);
	}
}
