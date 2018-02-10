package com.jeegem.user.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Maps;
import com.jeegem.common.controller.BaseController;
import com.jeegem.common.model.ArticleType;
import com.jeegem.core.mv.JeeGemModelAndView;
import com.jeegem.core.mybatis.page.Pagination;
import com.jeegem.service.ArticleTypeService;

/**
 * 
 * <p>
 * Title: ArticleTypeAction.java
 * </p>
 * 
 * <p>
 * Description: 文章类型管理
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
 * @date 2018年2月10日 上午8:23:14
 * 
 * @version JeeGem V3.0
 */
@Controller
@Scope(value = "prototype")
public class ArticleTypeAction extends BaseController {

	@Autowired
	ArticleTypeService articleTypeService;

	/**
	 * 文章类型
	 * 
	 * @return
	 */
	@RequestMapping(value = "/articleType/list")
	public ModelAndView userIndex(HttpServletRequest request, HttpServletResponse response, String pageNo) {
		ModelAndView mv = new JeeGemModelAndView("articleType/list.ftl");

		Map<String, Object> params = Maps.newHashMap();
		params.put("pageNo", pageNo);
		
		Pagination<ArticleType> page = articleTypeService.queryForPages(params);
		
		mv.addObject("page", page);
		
		return mv;
	}

}
