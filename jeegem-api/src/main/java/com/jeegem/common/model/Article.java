package com.jeegem.common.model;

import java.util.Date;

/**
 * 帖子类
 * @author redpigedu_code
 *
 */
public class Article {

	private Integer id; // 编号
	private String title; // 标题
	private Date addTime; // 发布日期 假如 修改帖子 发布日期也会更新
	private String content; // 帖子内容
	private String summary; // 帖子摘要
	private String titleColor="black"; // 标题颜色 默认黑色
	private Integer click=0; // 阅读次数 默认0
	private Integer recommend=0; // 是否推荐帖子  1  是  0 否  默认 0
	private Integer slide=0; // 1:Banner 2:幻灯 3:推荐 4:图文
	private String slideImage; // 幻灯图片
	private ArticleType articleType; // 帖子类型
	private String keyWords; // 关键字 中间空格隔开
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public Date getAddTime() {
		return addTime;
	}
	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getTitleColor() {
		return titleColor;
	}
	public void setTitleColor(String titleColor) {
		this.titleColor = titleColor;
	}
	public Integer getClick() {
		return click;
	}
	public void setClick(Integer click) {
		this.click = click;
	}
	
	public Integer getRecommend() {
		return recommend;
	}
	public void setRecommend(Integer recommend) {
		this.recommend = recommend;
	}
	
	public Integer getSlide() {
		return slide;
	}
	public void setSlide(Integer slide) {
		this.slide = slide;
	}
	
	public ArticleType getArticleType() {
		return articleType;
	}
	public void setArticleType(ArticleType articleType) {
		this.articleType = articleType;
	}
	public String getSlideImage() {
		return slideImage;
	}
	public void setSlideImage(String slideImage) {
		this.slideImage = slideImage;
	}
	public String getKeyWords() {
		return keyWords;
	}
	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	
	
}
