package com.jeegem.common.dao;

import java.util.List;
import java.util.Map;

import com.jeegem.common.model.User;
import com.jeegem.permission.bo.RoleBo;

public interface UserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	User login(Map<String, Object> map);

	User findUserByEmail(String email);

	List<RoleBo> selectRoleByUserId2(Long id);
	
	/**
	 * 获取分页数据
	 * @param params
	 * @return
	 */
	List<User> getPageList(Map<String, Object> params);
	
	/**
	 * 获取分页数据总量
	 * @param params
	 * @return
	 */
	Integer getTotalCount(Map<String, Object> params);
	
	/**
	 * 根据ID更新
	 * @param user
	 */
	int updateById(User user);

}