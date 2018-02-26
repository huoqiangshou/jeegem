package com.jeegem.service;

import java.util.Map;

import com.jeegem.common.model.Article;
import com.jeegem.core.mybatis.page.Pagination;

/**
 * 
 * <p>
 * Title: ArticleService.java
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
 * @date 2018年2月11日 上午9:26:38
 * 
 * @version JeeGem V3.0
 */
public interface ArticleService {

	/**
	 * 查询分页
	 * 
	 * @param params
	 * @return
	 */
	Pagination<Article> queryForPages(Map<String, Object> params);

	/**
	 * 根据ID更新
	 * 
	 * @param article
	 * @return 返回更新数量
	 */
	int updateById(Article article);

	/**
	 * 新增文章
	 * 
	 * @param article
	 * @return
	 */
	int save(Article article);

	/**
	 * 根据ID集合删除数据
	 * 
	 * @param params
	 * @return
	 */
	int deleteByIds(Map<String, Object> params);

	/**
	 * 根据ID获取文章
	 * 
	 * @param id
	 * @return
	 */
	Article getArticleById(Integer id);

}
