package com.jeegem.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.jeegem.common.dao.CodeGenSchemeMapper;
import com.jeegem.common.model.CodeGenScheme;
import com.jeegem.service.CodeGenSchemeService;
import com.jeegem.service.impl.base.BaseService;

/**
 * <p>
 * Title: CodeGenSchemeServiceImpl.java
 * </p>
 * 
 * <p>
 * Description: 代码生成器表业务层
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
 * @date 2018年2月11日 下午5:50:50
 * 
 * @version JeeGem V3.0
 */
public class CodeGenSchemeServiceImpl extends BaseService<CodeGenScheme> implements CodeGenSchemeService {
	
	@Autowired
	CodeGenSchemeMapper codeGenSchemeMapper;
	
	/** 
	 * @see com.jeegem.service.CodeGenSchemeService#getPageList(java.util.Map)
	 */
	@Override
	public List<CodeGenScheme> getPageList(Map<String, Object> params) {
		return this.codeGenSchemeMapper.getPageList(params);
	}

	/** 
	 * @see com.jeegem.service.CodeGenSchemeService#getTotalCount(java.util.Map)
	 */
	@Override
	public int getTotalCount(Map<String, Object> params) {
		return this.codeGenSchemeMapper.getTotalCount(params);
	}

	/** 
	 * @see com.jeegem.service.CodeGenSchemeService#updateById(com.jeegem.common.model.CodeGenScheme)
	 */
	@Override
	public int updateById(CodeGenScheme codeGenScheme) {
		return this.codeGenSchemeMapper.updateById(codeGenScheme);
	}

	/** 
	 * @see com.jeegem.service.CodeGenSchemeService#save(com.jeegem.common.model.CodeGenScheme)
	 */
	@Override
	public int save(CodeGenScheme codeGenScheme) {
		return this.codeGenSchemeMapper.save(codeGenScheme);
	}

	/** 
	 * @see com.jeegem.service.CodeGenSchemeService#deleteByIds(java.util.Map)
	 */
	@Override
	public int deleteByIds(Map<String, Object> params) {
		return this.codeGenSchemeMapper.deleteByIds(params);
	}

	/** 
	 * @see com.jeegem.service.CodeGenSchemeService#getObjById(java.lang.Long)
	 */
	@Override
	public CodeGenScheme getObjById(Long id) {
		return this.codeGenSchemeMapper.getObjById(id);
	}

	/** 
	 * @see com.jeegem.service.CodeGenSchemeService#getAll()
	 */
	@Override
	public List<CodeGenScheme> getAll() {
		return this.codeGenSchemeMapper.getAll();
	}

	/** 
	 * @see com.jeegem.service.CodeGenSchemeService#getCodeGenSchemeByProperty()
	 */
	@Override
	public List<CodeGenScheme> getObjByProperty() {
		return this.codeGenSchemeMapper.getObjByProperty();
	}

	/** 
	 * @see com.jeegem.service.CodeGenSchemeService#batchDelete(java.util.List)
	 */
	@Override
	public int batchDelete(List<CodeGenScheme> lists) {
		return this.codeGenSchemeMapper.batchDelete(lists);
	}

}
