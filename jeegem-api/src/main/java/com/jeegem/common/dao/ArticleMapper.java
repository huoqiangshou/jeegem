package com.jeegem.common.dao;

import java.util.List;
import java.util.Map;

import com.jeegem.common.model.Article;

/**
 * 
 * <p>
 * Title: ArticleDao.java
 * </p>
 * 
 * <p>
 * Description:帖子Dao接口 
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
 * @date 2018年2月10日 上午5:46:14
 * 
 * @version JeeGem V3.0
 */
public interface ArticleMapper {

	/**
	 * 获取最新7条的帖子
	 * @return
	 */
	public List<Article> getNewest();
	
	/**
	 * 获取最新7条推荐的帖子
	 * @return
	 */
	public List<Article> getRecommend();
	
	/**
	 * 获取最新5条幻灯的帖子
	 * @return
	 */
	public List<Article> getSlide();
	
	/**
	 * 根据类型获取7条首页帖子数据
	 * @return
	 */
	public List<Article> getIndex(Integer typeId);
	
	/**
	 * 根据条件分页查询帖子
	 * @param map
	 * @return
	 */
	public List<Article> list(Map<String,Object> map);
	
	/**
	 * 获取总记录数
	 * @param map
	 * @return
	 */
	public Long getTotal(Map<String,Object> map);
	
	/**
	 * 通过id查询帖子
	 * @param id
	 * @return
	 */
	public Article findById(Integer id);
	
	/**
	 * 更新帖子
	 * @param article
	 * @return
	 */
	public Integer update(Article article);
	
	/**
	 * 获取上一个帖子
	 * @param id
	 * @return
	 */
	public Article getLastArticle(Integer id);
	
	/**
	 * 获取下一个帖子
	 * @param id
	 * @return
	 */
	public Article getNextArticle(Integer id);
	
	/**
	 * 添加帖子
	 * @param article
	 * @return
	 */
	public Integer add(Article article);
	
	/**
	 * 删除帖子信息
	 * @param id
	 * @return
	 */
	public Integer delete(Integer id);
	
	/**
	 * 查询指定的帖子类别下的帖子数量
	 * @param typeId
	 * @return
	 */
	public Integer getNumByTypeId(Integer typeId);
}
