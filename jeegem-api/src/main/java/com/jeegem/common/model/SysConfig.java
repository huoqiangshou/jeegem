package com.jeegem.common.model;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * Title: SysConfig.java
 * </p>
 * 
 * <p>
 * Description: 系统配置类
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
 * @date 2018年2月9日 下午7:24:01
 * 
 * @version JeeGem V3.0
 */
public class SysConfig implements Serializable{
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;

	//ID
	private String id;
	
	//添加时间
	private Date addTime;
	
	//key值
	private String key;
	
	//value值
	private String value;
	
	//注释说明
	private String comment;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	
}
