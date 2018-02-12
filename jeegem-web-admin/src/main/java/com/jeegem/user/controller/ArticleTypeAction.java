package com.jeegem.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@RequestMapping(value = "/articleType/list", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response, String pageNo) {
		ModelAndView mv = new JeeGemModelAndView("articleType/list.ftl");

		Map<String, Object> params = Maps.newHashMap();
		params.put("pageNo", pageNo);

		Pagination<ArticleType> page = articleTypeService.queryForPages(params);

		mv.addObject("page", page);

		return mv;
	}

	/**
	 * 添加文章类型
	 * 
	 * @return
	 */
	@RequestMapping(value = "/articleType/addArticleType", method = RequestMethod.POST)
	public String addArticleType(HttpServletRequest request, HttpServletResponse response, ArticleType articleType) {

		articleTypeService.save(articleType);

		return "redirect:/articleType/list.shtml";
	}

	/**
	 * 删除
	 * 
	 * @param request
	 * @param response
	 * @param ids
	 */
	@RequestMapping(value = "/articleType/deleteByIds", method = RequestMethod.POST)
	public void deleteByIds(HttpServletRequest request, HttpServletResponse response, String[] ids) {

		Map<String, Object> params = Maps.newHashMap();
		params.put("ids", ids);

		int ret = this.articleTypeService.deleteByIds(params);

		response.setContentType("text/plain");
		response.setHeader("Cache-Control", "no-cache");
		response.setCharacterEncoding("UTF-8");

		try {
			PrintWriter writer = response.getWriter();
			writer.print(ret);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 根据ID获取文章类型
	 * 
	 * @param request
	 * @param response
	 * @param ids
	 */
	@RequestMapping(value = "/articleType/getArcicleTypeById", method = RequestMethod.POST)
	@ResponseBody
	public ArticleType getArcicleTypeById(HttpServletRequest request, HttpServletResponse response, Long id) {

		ArticleType articleType = this.articleTypeService.getArcicleTypeById(id);

		return articleType;

	}

	/**
	 * 更新操作
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/articleType/updateArticleTypeById", method = RequestMethod.POST)
	public String updateArticleTypeById(HttpServletRequest request, HttpServletResponse response,
			ArticleType articleType) throws Exception {

		this.articleTypeService.updateById(articleType);

		return "redirect:/articleType/list.shtml";
	}

}
