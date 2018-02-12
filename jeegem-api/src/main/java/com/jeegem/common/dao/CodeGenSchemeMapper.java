package com.jeegem.common.dao;

import java.util.List;
import java.util.Map;

import com.jeegem.common.model.CodeGenScheme;

/**
 * 
 * <p>
 * Title: CodeGenSchemeMapper.java
 * </p>
 * 
 * <p>
 * Description: 
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
 * @date 2018年2月11日 下午4:51:07
 * 
 * @version JeeGem V3.0
 */
public interface CodeGenSchemeMapper {

	/**
	 * 获取分页数据
	 * 
	 * @param params
	 * @return
	 */
	List<CodeGenScheme> getPageList(Map<String, Object> params);

	/**
	 * 获取分页数据总量
	 * 
	 * @param params
	 * @return
	 */
	int getTotalCount(Map<String, Object> params);

	/**
	 * 根据ID更新
	 * 
	 * @param articleType
	 */
	int updateById(CodeGenScheme codeGenScheme);

	/**
	 * 新增
	 * 
	 * @param articleType
	 * @return
	 */
	int save(CodeGenScheme codeGenScheme);

	/**
	 * 删除
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
	CodeGenScheme getObjById(Long id);
	
	/**
	 * 查询所有数据
	 * @return
	 */
	List<CodeGenScheme> getAll();
	
	/**
	 * 根据属性名称、值获取
	 * @return
	 */
	List<CodeGenScheme> getObjByProperty();
	
	/**
	 * 批量删除
	 * @param lists
	 * @return
	 */
	int batchDelete(List<CodeGenScheme> lists);
	
}
