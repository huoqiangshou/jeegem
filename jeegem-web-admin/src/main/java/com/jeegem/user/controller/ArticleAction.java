package com.jeegem.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jeegem.common.controller.BaseController;
import com.jeegem.common.model.ArticleType;
import com.jeegem.core.mv.JeeGemModelAndView;
import com.jeegem.service.ArticleService;
import com.jeegem.service.ArticleTypeService;

/**
 * 
 * <p>
 * Title: ArticleAction.java
 * </p>
 * 
 * <p>
 * Description: 文章管理
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
public class ArticleAction extends BaseController {

	@Autowired
	ArticleService articleService;

	@Autowired
	ArticleTypeService articleTypeService;

	/**
	 * 文章类型
	 * 
	 * @return
	 */
	@RequestMapping(value = "/articleType/addArticle", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response, String pageNo) {
		ModelAndView mv = new JeeGemModelAndView("article/addArticle.ftl");
		
		List<ArticleType> articleTypes = this.articleTypeService.getAll();
		
		mv.addObject("articleTypes", articleTypes);
		
		return mv;
	}

}
