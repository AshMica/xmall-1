package com.sillybin.xmall.service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.sillybin.xmall.dao.UserDao;
import com.sillybin.xmall.entity.User;
import com.sillybin.xmall.service.UserService;
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	@Resource(name="userDao")
	private UserDao userDao;

	public User getUserByLoginName(String loginName) throws Exception {
		return userDao.findUserByLoginName(loginName);
	}

	public User getUserByUserId(Long userId) throws Exception {
		return userDao.findUserByUserId(userId);
	}
}
