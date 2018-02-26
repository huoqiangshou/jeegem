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
	 * @param article
	 */
	int updateById(Article article);

	/**
	 * 新增文章类型
	 * 
	 * @param article
	 * @return
	 */
	int save(Article article);

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
	Article getArticleById(Integer id);

	/**
	 * 查询所有
	 * @return
	 */
	List<Article> getAll();
	
	/**
	 * 根据articleTypeId查询Article
	 * @param id
	 * @return
	 */
	List<Article> getArticleByArticleTypeId(Long id);

	/**
	 * 根据属性查询
	 * @param params
	 * @return
	 */
	List<Article> getByPropertyName(Map<String, Object> params);

	/** 根据各个属性查询
	 * @param article
	 * @return
	 */
	List<Article> getByArticle(Article article);
	
	
}
