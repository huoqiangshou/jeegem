package com.jeegem.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.jeegem.common.dao.SysConfigMapper;
import com.jeegem.common.model.SysConfig;
import com.jeegem.service.SysConfigService;
import com.jeegem.service.impl.base.BaseService;

/**
 * <p>
 * Title: SysConfigServiceImpl.java
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
 * @date 2018年2月9日 下午8:00:55
 * 
 * @version JeeGem V3.0
 */
public class SysConfigServiceImpl extends BaseService<SysConfig> implements SysConfigService {

	@Autowired
	private SysConfigMapper sysConfigMapper;

	/**
	 * @see com.jeegem.service.SysConfigService#getTotalCount(java.util.Map)
	 */
	@Override
	public int getTotalCount(Map<String, Object> params) {
		return sysConfigMapper.getTotalCount(params);
	}

	/**
	 * @see com.jeegem.service.SysConfigService#updateById(com.jeegem.common.model.SysConfig)
	 */
	@Override
	public int updateById(SysConfig sysConfig) {
		return sysConfigMapper.updateById(sysConfig);
	}

	/**
	 * @see com.jeegem.service.SysConfigService#selectById(java.lang.Long)
	 */
	@Override
	public SysConfig selectById(Long id) {
		return sysConfigMapper.selectById(id);
	}

	/**
	 * @see com.jeegem.service.SysConfigService#selectObjByProperty(java.util.Map)
	 */
	@Override
	public List<SysConfig> selectObjByProperty(Map<String, Object> params) {
		return sysConfigMapper.selectObjByProperty(params);
	}

	/**
	 * @see com.jeegem.service.impl.base.BaseService#getPageList(java.util.Map)
	 */
	@Override
	public List<SysConfig> getPageList(Map<String, Object> params) {
		return sysConfigMapper.getPageList(params);
	}

	/**
	 * @see com.jeegem.service.SysConfigService#getAllDatas()
	 */
	@Override
	public List<SysConfig> getAllDatas() {
		return sysConfigMapper.getAllDatas();
	}

}
