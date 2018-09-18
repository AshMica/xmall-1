package com.sillybin.xmall.transmission;

import com.sillybin.xmall.entity.User;

public interface UserTransmission {
	public User getUserByLoginName(String loginName) throws Exception;
	public User getUserByUserId(Long userId) throws Exception;
}
