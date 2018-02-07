package com.jeegem.permission.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.jeegem.common.model.Permission;
import com.jeegem.core.mybatis.page.Pagination;
import com.jeegem.permission.bo.PermissionBo;

public interface PermissionService {

	int deleteByPrimaryKey(Long id);

	Permission insert(Permission record);

    Permission insertSelective(Permission record);

    Permission selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Permission record);

    int updateByPrimaryKey(Permission record);

	Map<String, Object> deletePermissionById(String ids);

	Pagination<Permission> findPage(Map<String,Object> resultMap, Integer pageNo,
			Integer pageSize);
	List<PermissionBo> selectPermissionById(Long id);

	Map<String, Object> addPermission2Role(Long roleId,String ids);

	Map<String, Object> deleteByRids(String roleIds);
	//根据用户ID查询权限（permission），放入到Authorization里。
	Set<String> findPermissionByUserId(Long userId);
}
