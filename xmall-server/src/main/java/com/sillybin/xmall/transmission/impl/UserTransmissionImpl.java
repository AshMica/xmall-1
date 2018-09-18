package com.sillybin.xmall.transmission.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.alibaba.dubbo.config.annotation.Service;
import com.sillybin.xmall.entity.User;
import com.sillybin.xmall.service.UserService;
import com.sillybin.xmall.transmission.UserTransmission;
@Component("userTransmission")
@Service(version="1.0.0")
public class UserTransmissionImpl implements UserTransmission {
	@Resource(name="userService")
	private UserService userService;

	public User getUserByLoginName(String loginName) throws Exception {
		User user = userService.getUserByLoginName(loginName);
		return user;
	}

	public User getUserByUserId(Long userId) throws Exception {
		return userService.getUserByUserId(userId);
	}
}
