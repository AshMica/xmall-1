package com.sillybin.xmall.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.alibaba.dubbo.config.annotation.Reference;
import com.sillybin.xmall.base.controller.BaseController;
import com.sillybin.xmall.transmission.UserTransmission;
import com.sillybin.xmall.util.ConstantsUtil;
@Controller("userController")
@RequestMapping("/user")
public class UserController extends BaseController {
	@Reference(version="1.0.0")
	private UserTransmission userTransmission;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getUserLoginForm() throws Exception {
		return "user/user_login_form";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView loginError() throws Exception {
		RedirectView view = new RedirectView(request.getContextPath() + "/user/logout");
		return new ModelAndView(view);
	}
	
	@RequestMapping(value="/list/{pageNum}/{username}")
	public ModelAndView getUserList(@PathVariable(name="pageNum")Integer pageNum, @PathVariable(name="username")String username) throws Exception {
		if (username != null && "".equals(username.trim())) {
			username = null;
		} else {
			username = username.trim();
		}
		Map<String, Object> resultMap = userTransmission.getUserListByPage(pageNum, ConstantsUtil.PAGE_SIZE, username);
		return new ModelAndView("user/user_list", resultMap);
	}
}
