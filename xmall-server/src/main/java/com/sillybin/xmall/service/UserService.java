package com.sillybin.xmall.service;

import com.sillybin.xmall.entity.User;

public interface UserService {
	public User getUserByLoginName(String loginName) throws Exception;
	public User getUserByUserId(Long userId) throws Exception;
}
