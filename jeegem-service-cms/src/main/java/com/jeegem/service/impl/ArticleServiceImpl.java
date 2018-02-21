package com.jeegem.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeegem.common.dao.ArticleMapper;
import com.jeegem.common.model.Article;
import com.jeegem.core.mybatis.page.Pagination;
import com.jeegem.service.ArticleService;
import com.jeegem.service.impl.base.BaseService;

@Service
@Transactional(readOnly = true)
public class ArticleServiceImpl extends BaseService<Article> implements ArticleService {

	@Autowired
	private ArticleMapper articleMapper;

	/**
	 * 
	 * @see com.jeegem.service.ArticleService#queryForPages(java.util.Map)
	 */
	@Override
	public Pagination<Article> queryForPages(Map<String, Object> params) {

		/**
		 * 
		 */
		return super.pagination(params);

	}

	/**
	 * 
	 * @see com.jeegem.service.impl.base.BaseService#getPageList(java.util.Map)
	 */
	@Override
	public List<Article> getPageList(Map<String, Object> params) {

		return articleMapper.getPageList(params);
	}

	/**
	 * 
	 * @see com.jeegem.service.impl.base.BaseService#getTotalCount(java.util.Map)
	 */
	@Override
	public int getTotalCount(Map<String, Object> params) {
		return articleMapper.getTotalCount(params);
	}

	/**
	 * 
	 * @see com.jeegem.service.ArticleService#updateById(com.jeegem.common.model.Article)
	 */
	@Transactional(readOnly = false)
	@Override
	public int updateById(Article article) {
		return articleMapper.updateById(article);
	}

	/**
	 * 
	 */
	/**
	 * @see com.jeegem.service.articleService#save(com.jeegem.common.model.article)
	 */
	@Transactional(readOnly = false)
	@Override
	public int save(Article article) {
		return articleMapper.save(article);
	}

	/**
	 * 
	 * @see com.jeegem.service.ArticleService#deleteByIds(java.util.Map)
	 */
	@Transactional(readOnly = false)
	@Override
	public int deleteByIds(Map<String, Object> params) {

		return articleMapper.deleteByIds(params);
	}

	/**
	 * 
	 * @see com.jeegem.service.ArticleService#getArticleById(java.lang.Long)
	 */
	@Override
	public Article getArticleById(Long id) {

		return articleMapper.getArticleById(id);
	}

	/** 
	 * @see com.jeegem.service.ArticleService#getAll()
	 */
	@Override
	public List<Article> getAll() {
		return articleMapper.getAll();
	}

}
