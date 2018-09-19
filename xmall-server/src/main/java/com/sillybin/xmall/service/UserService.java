package com.sillybin.xmall.service;

import java.util.Map;

import com.sillybin.xmall.entity.User;

public interface UserService {
	public User getUserByLoginName(String loginName) throws Exception;
	public User getUserByUserId(Long userId) throws Exception;
	public Map<String, Object> getUserListByPage(Integer pageNum, Integer pageSize, String username) throws Exception;
}
