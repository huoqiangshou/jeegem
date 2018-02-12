package com.jeegem.user.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Maps;
import com.jeegem.common.controller.BaseAction;
import com.jeegem.common.model.CodeGenScheme;
import com.jeegem.core.mv.JeeGemModelAndView;
import com.jeegem.service.CodeGenSchemeService;

/**
 * <p>
 * Title: CodeGenSchemeAction.java
 * </p>
 * 
 * <p>
 * Description:代码生成器表
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
 * @date 2018年2月11日 下午6:08:07
 * 
 * @version JeeGem V3.0
 */
public class CodeGenSchemeAction extends BaseAction {

	@Autowired
	public CodeGenSchemeService codeGenSchemeService;

	/**
	 * 分页
	 * 
	 * @param request
	 * @param response
	 * @param pageNo
	 * @return
	 */
	@RequestMapping(value = "/codeGenScheme/list", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response, String pageNo) {
		ModelAndView mv = new JeeGemModelAndView("codeGenScheme/list.ftl");

		Map<String, Object> params = Maps.newHashMap();
		params.put("pageNo", pageNo);

		List<CodeGenScheme> pages = this.codeGenSchemeService.getPageList(params);

		mv.addObject("pages", pages);

		return mv;
	}

	/**
	 * 添加
	 * 
	 * @return
	 */
	@RequestMapping(value = "/codeGenScheme/save", method = RequestMethod.POST)
	public String save(HttpServletRequest request, HttpServletResponse response,
			CodeGenScheme codeGenScheme) {

		this.codeGenSchemeService.save(codeGenScheme);

		return "redirect:/codeGenScheme/list.shtml";
	}
	/**
	 * 根据ID获取
	 * 
	 * @param ids
	 * @param codeGenSchemeAction 
	 * @param request
	 * @param response
	 * @param id 
	 */
	@RequestMapping(value = "/codeGenScheme/getObjById", method = RequestMethod.POST)
	@ResponseBody
	public CodeGenScheme getObjById(Long id) {
	
		CodeGenScheme codeGenScheme = this.codeGenSchemeService.getObjById(id);
	
		return codeGenScheme;
	}
	/**
	 * 删除
	 * 
	 * @param request
	 * @param response
	 * @param ids
	 */
	@RequestMapping(value = "/codeGenScheme/deleteByIds", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteByIds(HttpServletRequest request, HttpServletResponse response, String[] ids) {

		Map<String, Object> params = Maps.newHashMap();
		params.put("ids", ids);

		int ret = this.codeGenSchemeService.deleteByIds(params);

		Map<String, Object> maps = Maps.newHashMap();
		maps.put("ret", ret);

		return maps;

	}

	/**
	 * 更新操作
	 * 
	 * @return
	 */
	@RequestMapping(value = "/codeGenScheme/updateById", method = RequestMethod.POST)
	public String updateById(HttpServletRequest request, HttpServletResponse response,
			CodeGenScheme codeGenScheme) {

		this.codeGenSchemeService.updateById(codeGenScheme);

		return "redirect:/codeGenScheme/list.shtml";
	}

}
