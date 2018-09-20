package com.sillybin.xmall.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sillybin.xmall.entity.Menu;

public interface MenuDao extends JpaRepository<Menu, Long> {
	@Query("from Menu m join fetch m.roleList r where m.parent.menuId=:parentId and r.roleId=:roleId order by m.sortOrder ASC")
	public List<Menu> findMenuListByParentAndRole(@Param("parentId")Long parentId, @Param("roleId")Long roleId) throws Exception;
}
