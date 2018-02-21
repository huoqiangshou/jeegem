package com.jeegem.common.model;

import java.io.Serializable;
import java.util.List;

/**
 * 帖子类别实体
 * @author redpigedu_code
 *
 */
public class ArticleType implements Serializable{

	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;
	private Integer id; // 编号
	private String typeName; // 类别名称
	private Integer sequence; // 排列序号
	private String keywords;// 关键字 页面seo用到
	private String description; // 类别描述 页面seo用到
	private List<Article> articles;//每个栏目对应的文章
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
	public Integer getSequence() {
		return sequence;
	}
	public void setSequence(Integer sequence) {
		this.sequence = sequence;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public List<Article> getArticles() {
		return articles;
	}
	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	
	
}
