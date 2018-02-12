package com.jeegem.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Maps;
import com.jeegem.common.controller.BaseController;
import com.jeegem.common.model.Article;
import com.jeegem.common.model.ArticleType;
import com.jeegem.common.utils.CommUtil;
import com.jeegem.core.mv.JeeGemModelAndView;
import com.jeegem.core.mybatis.page.Pagination;
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
	 * 文章
	 * 
	 * @return
	 */
	@RequestMapping(value = "/article/list", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response, String pageNo) {
		ModelAndView mv = new JeeGemModelAndView("article/list.ftl");
		Map<String, Object> params = Maps.newHashMap();
		params.put("pageNo", pageNo);

		Pagination<Article> page = this.articleService.queryForPages(params);

		mv.addObject("page", page);

		return mv;
	}

	/**
	 * 文章类型
	 * 
	 * @return
	 */
	@RequestMapping(value = "/article/addArticle", method = RequestMethod.GET)
	public ModelAndView addArticle(HttpServletRequest request, HttpServletResponse response, String pageNo) {
		ModelAndView mv = new JeeGemModelAndView("article/addArticle.ftl");

		List<ArticleType> articleTypes = this.articleTypeService.getAll();

		mv.addObject("articleTypes", articleTypes);

		return mv;
	}

	/**
	 * 文章类型
	 * 
	 * @return
	 * @throws Exception
	 * @throws IllegalStateException
	 */
	@RequestMapping(value = "/article/save", method = RequestMethod.POST)
	public String save(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("slideImageFile") MultipartFile slideImageFile, Article article)
			throws IllegalStateException, Exception {
		if (!slideImageFile.isEmpty()) {
			String filePath = System.getProperty("JeeGem.root");

			String imageName = UUID.randomUUID().toString() + ".jpg";
			File file = new File(filePath + "upload/JeeGem/" + imageName);
			slideImageFile.transferTo(file);
			article.setSlideImage(imageName);

			CommUtil.uploadToSFTPServer(file.getAbsolutePath().replace(file.getName(), ""), file.getName());

		}

		article.setAddTime(new Date()); // 设置当前日期为最新发布日期
		if (article.getId() == null) { // 添加
			articleService.save(article);
		} else { // 修改
			articleService.updateById(article);
		}

		return "redirect:/article/list.shtml";
	}
	
	/**
	 * 删除
	 * 
	 * @param request
	 * @param response
	 * @param ids
	 */
	@RequestMapping(value = "/article/deleteById", method = RequestMethod.POST)
	public String deleteByIds(HttpServletRequest request, HttpServletResponse response, String[] ids) {
		Map<String, Object> params = Maps.newHashMap();
		params.put("ids", ids);
		
		this.articleService.deleteByIds(params);
		
		return "redirect:/article/list.shtml";
	}
	
	/**
	 * @return
	 */
	@RequestMapping(value = "/article/editById", method = RequestMethod.GET)
	public ModelAndView editById(HttpServletRequest request, HttpServletResponse response, Long id) {
		ModelAndView mv = new JeeGemModelAndView("article/editArticle.ftl");
		
		Article article = this.articleService.getArticleById(id);
		
		mv.addObject("article", article);
		
		List<ArticleType> articleTypes = this.articleTypeService.getAll();

		mv.addObject("articleTypes", articleTypes);
		
		return mv;
	}

	
}
