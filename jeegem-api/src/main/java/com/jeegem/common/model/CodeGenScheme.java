package com.jeegem.common.model;

/**
 * <p>
 * Title: CodeGenScheme.java
 * </p>
 * 
 * <p>
 * Description: 记录代码生成器功能里面需要生成的表信息
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
 * @date 2018年2月11日 下午4:53:31
 * 
 * @version JeeGem V3.0
 */
public class CodeGenScheme {
	
	//ID主键
	private Integer id;
	//表名
	private String tableName;
	//表对应的实体类名
	private String entityName;
	//注释，用在实体类的说明上
	private String comment;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getEntityName() {
		return entityName;
	}

	public void setEntityName(String entityName) {
		this.entityName = entityName;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

}
