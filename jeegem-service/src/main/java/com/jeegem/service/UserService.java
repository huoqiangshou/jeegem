package com.jeegem.service;

import java.util.Map;

import com.jeegem.common.model.User;
import com.jeegem.core.mybatis.page.Pagination;

/**
 * <p>
 * Title: UserService.java
 * </p>
 * 
 * <p>
 * Description: User业务层
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
 * @date 2018年2月9日 上午10:21:52
 * 
 * @version JeeGem V3.0
 */
public interface UserService {

	/**
	 * 查询分页
	 * 
	 * @param params
	 * @return
	 */
	Pagination<User> queryForPages(Map<String, Object> params);

	/**
	 * 根据ID更新
	 * 
	 * @param user
	 * @return 返回更新数量
	 */
	int updateById(User user);

}
