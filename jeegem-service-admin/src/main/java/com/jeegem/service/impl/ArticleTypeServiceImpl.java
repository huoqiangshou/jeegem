package com.jeegem.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeegem.common.dao.ArticleTypeMapper;
import com.jeegem.common.model.ArticleType;
import com.jeegem.core.mybatis.page.Pagination;
import com.jeegem.service.ArticleTypeService;
import com.jeegem.service.impl.base.BaseService;

@Service
@Transactional(readOnly = true)
public class ArticleTypeServiceImpl extends BaseService<ArticleType> implements ArticleTypeService {

	@Autowired
	private ArticleTypeMapper articleTypeMapper;

	@Override
	public Pagination<ArticleType> queryForPages(Map<String, Object> params) {

		/**
		 * 
		 */
		return super.pagination(params);

	}

	@Override
	public List<ArticleType> getPageList(Map<String, Object> params) {

		return articleTypeMapper.getPageList(params);
	}

	@Override
	public int getTotalCount(Map<String, Object> params) {
		return articleTypeMapper.getTotalCount(params);
	}

	@Transactional(readOnly = false)
	@Override
	public int updateById(ArticleType articleType) {
		return articleTypeMapper.updateById(articleType);
	}

	/**
	 * @see com.jeegem.service.ArticleTypeService#save(com.jeegem.common.model.ArticleType)
	 */
	@Transactional(readOnly = false)
	@Override
	public int save(ArticleType articleType) {
		return articleTypeMapper.save(articleType);
	}

	/**
	 * @see com.jeegem.service.ArticleTypeService#deleteByIds(java.util.List)
	 */
	@Transactional(readOnly = false)
	@Override
	public int deleteByIds(Map<String, Object> params) {

		return articleTypeMapper.deleteByIds(params);
	}

	/**
	 * 
	 * @see com.jeegem.service.ArticleTypeService#getArcicleTypeById(java.lang.Long)
	 */
	@Override
	public ArticleType getArcicleTypeById(Long id) {

		return articleTypeMapper.getArcicleTypeById(id);
	}

	/** 
	 * @see com.jeegem.service.ArticleTypeService#getAll()
	 */
	@Override
	public List<ArticleType> getAll() {
		
		return this.articleTypeMapper.getAll();
		
	}

}
