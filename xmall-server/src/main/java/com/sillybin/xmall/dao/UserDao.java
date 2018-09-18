package com.sillybin.xmall.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sillybin.xmall.entity.User;

public interface UserDao extends JpaRepository<User, Long> {
	@Query("from User u where u.loginName=:loginName")
	public User findUserByLoginName(@Param("loginName")String loginName) throws Exception;

	@Query("from User u where u.userId=:userId")
	public User findUserByUserId(@Param("userId")Long userId) throws Exception;
}
