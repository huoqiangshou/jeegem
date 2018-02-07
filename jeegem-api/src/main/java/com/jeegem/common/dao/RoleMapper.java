package com.jeegem.common.dao;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.jeegem.common.model.Permission;
import com.jeegem.common.model.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

	Set<String> findRoleByUserId(Long id);

	List<Role> findNowAllPermission(Map<String, Object> map);
	
	void initData();
	
	List<Permission> findPermissionByUserId(Long userId);
	
}