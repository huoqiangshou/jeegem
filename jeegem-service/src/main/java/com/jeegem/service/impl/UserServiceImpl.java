package com.jeegem.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeegem.common.dao.UserMapper;
import com.jeegem.common.model.User;
import com.jeegem.core.mybatis.page.Pagination;
import com.jeegem.service.UserService;
import com.jeegem.service.impl.base.BaseService;

/**
 * <p>
 * Title: UserServiceImpl.java
 * </p>
 * 
 * <p>
 * Description: 
 * </p>
 * 
 * <p>
 * Copyright: Copyright (c) 2018
 * </p>
 * 
 * <p>
 * Company: www.jeegem.com
 * </p>
 * 
 * @author JeeGem
 * 
 * @date 2018年2月9日 上午10:22:38
 * 
 * @version JeeGem V3.0
 */
@Service("jeegemUserService")
@Transactional(readOnly = true)
public class UserServiceImpl extends BaseService<User> implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	/**
	 *  1、查询数据
     *  2、查询总量 
	 * @see com.jeegem.service.UserService#queryForPages(java.util.Map)
	 */
	@Override
	public Pagination<User> queryForPages(Map<String, Object> params) {
		
		/**
		 
		 */
		return super.pagination(params);
		
	}
	
	/** 
	 * @see com.jeegem.service.impl.base.BaseService#getPageList()
	 */
	@Override
	public List<User> getPageList(Map<String, Object> params) {
		
		return userMapper.getPageList(params);
	}
	
	/** 
	 * @see com.jeegem.service.impl.base.BaseService#getTotalCount()
	 */
	@Override
	public int getTotalCount(Map<String, Object> params) {
		return userMapper.getTotalCount(params);
	}

}






















