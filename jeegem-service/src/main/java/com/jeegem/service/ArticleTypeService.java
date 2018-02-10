package com.jeegem.service;

import java.util.Map;

import com.jeegem.common.model.ArticleType;
import com.jeegem.core.mybatis.page.Pagination;

/**
 * 
 * <p>
 * Title: ArticleTypeService.java
 * </p>
 * 
 * <p>
 * Description: 文章类型业务层
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
 * @date 2018年2月10日 上午8:29:42
 * 
 * @version JeeGem V3.0
 */
public interface ArticleTypeService {

	/**
	 * 查询分页
	 * 
	 * @param params
	 * @return
	 */
	Pagination<ArticleType> queryForPages(Map<String, Object> params);

	/**
	 * 根据ID更新
	 * 
	 * @param articleType
	 * @return 返回更新数量
	 */
	int updateById(ArticleType articleType);

}
