package com.sillybin.xmall.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
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

	public Map<String, Object> getUserListByPage(Integer pageNum, Integer pageSize, String username) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Sort sort = new Sort(Direction.ASC, "userId");
		Pageable pageable = PageRequest.of(pageNum - 1, pageSize, sort);
		Page<User> page = null;
		if (username == null) {
			page = userDao.findAll(pageable);
		} else {
			page = userDao.findAll(new Specification<User>() {
				public Predicate toPredicate(Root<User> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
					List<Predicate> queryList = new ArrayList<Predicate>();
					// 开始进行设定模糊查询
					queryList.add(cb.like(root.get("username"), "%" + username + "%"));
					Predicate[] predicates = new Predicate[queryList.size()];
					return query.where(queryList.toArray(predicates)).getRestriction();
				}
			}, pageable);
		}
		
		resultMap.put("list", page.getContent());
		resultMap.put("pageNum", pageNum);
		resultMap.put("pageSize", pageSize);
		resultMap.put("totalCount", page.getTotalElements());
		resultMap.put("totalPage", page.getTotalPages());
		return resultMap;
	}
}
