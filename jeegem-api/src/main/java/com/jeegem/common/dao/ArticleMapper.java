package com.jeegem.common.dao;

import java.util.List;
import java.util.Map;

import com.jeegem.common.model.Article;

/**
 * 
 * <p>
 * Title: ArticleMapper.java
 * </p>
 * 
 * <p>
 * Description: 帖子接口
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
 * @date 2018年2月11日 上午9:24:21
 * 
 * @version JeeGem V3.0
 */
public interface ArticleMapper {

	/**
	 * 获取分页数据
	 * 
	 * @param params
	 * @return
	 */
	List<Article> getPageList(Map<String, Object> params);

	/**
	 * 获取分页数据总量
	 * 
	 * @param params
	 * @return
	 */
	Integer getTotalCount(Map<String, Object> params);

	/**
	 * 根据ID更新
	 * 
	 * @param articleType
	 */
	int updateById(Article articleType);

	/**
	 * 新增文章类型
	 * 
	 * @param articleType
	 * @return
	 */
	int save(Article articleType);

	/**
	 * 删除文章类型
	 * 
	 * @param params
	 * @return
	 */
	int deleteByIds(Map<String, Object> params);

	/**
	 * 
	 * @param id
	 * @return
	 */
	Article getArcicleById(Long id);
	

	
}
