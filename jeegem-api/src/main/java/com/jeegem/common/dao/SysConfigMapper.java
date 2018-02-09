package com.jeegem.common.dao;

import java.util.List;
import java.util.Map;

import com.jeegem.common.model.SysConfig;

public interface SysConfigMapper {

	/**
	 * 获取分页数据
	 * 
	 * @param params
	 * @return
	 */
	List<SysConfig> getPageList(Map<String, Object> params);

	/**
	 * 获取分页数据总量
	 * 
	 * @param params
	 * @return
	 */
	Integer getTotalCount(Map<String, Object> params);

	/**
	 * 根据ID更新
	 * 
	 * @param sysConfig
	 */
	int updateById(SysConfig sysConfig);

	/**
	 * 根据ID查询
	 * 
	 * @param id
	 * @return
	 */
	SysConfig selectById(Long id);

	/**
	 * 根据属性名、操作符、值来查询 返回集合
	 * 
	 * @param params
	 * @return
	 */
	List<SysConfig> selectObjByProperty(Map<String, Object> params);
	
	
	/**
	 * 查询所有数据
	 * 
	 * @return
	 */
	List<SysConfig> getAllDatas();
	
	
}