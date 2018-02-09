package com.jeegem.service.impl.base;

import java.util.List;
import java.util.Map;

import com.jeegem.core.mybatis.page.Pagination;

/**
 * <p>
 * Title: BaseService.java
 * </p>
 * 
 * <p>
 * Description: 业务层基类,主要是分页方法放在这里
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
 * @date 2018年2月9日 上午10:24:27
 * 
 * @version JeeGem V3.0
 */
public abstract class BaseService<T> {

	/**
	 * 查询分页具体数据
	 * 
	 * @return
	 */
	public abstract List<T> getPageList(Map<String, Object> params);

	/**
	 * 查询分页数据总量
	 * 
	 * @return
	 */
	public abstract int getTotalCount(Map<String, Object> params);

	/**
	 * 查询分页
	 * 
	 * @param params
	 * @return
	 */
	public Pagination<T> pagination(Map<String, Object> params) {

		Pagination<T> page = new Pagination<>();
		page.setList(getPageList(params));

		page.setTotalCount(getTotalCount(params));

		int pageNo = params.get("pageNo") == null ? 1 : Integer.valueOf(params.get("pageNo").toString());

		page.setPageNo(pageNo);

		return page;

	}

}
