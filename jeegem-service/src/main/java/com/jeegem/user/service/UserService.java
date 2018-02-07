package com.jeegem.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.ui.ModelMap;

import com.jeegem.common.model.User;
import com.jeegem.core.mybatis.page.Pagination;
import com.jeegem.permission.bo.RoleBo;
import com.jeegem.permission.bo.UserRoleAllocationBo;

public interface UserService {

	int deleteByPrimaryKey(Long id);

	User insert(User record);

    User insertSelective(User record);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User login(String email ,String pswd);

	User findUserByEmail(String email);

	Pagination<User> findByPage(Map<String, Object> resultMap, Integer pageNo,
			Integer pageSize);

	Map<String, Object> deleteUserById(String ids);

	Map<String, Object> updateForbidUserById(Long id, Long status);

	Pagination<UserRoleAllocationBo> findUserAndRole(ModelMap modelMap,
			Integer pageNo, Integer pageSize);

	List<RoleBo> selectRoleByUserId(Long id);

	Map<String, Object> addRole2User(Long userId, String ids);

	Map<String, Object> deleteRoleByUserIds(String userIds);
}
