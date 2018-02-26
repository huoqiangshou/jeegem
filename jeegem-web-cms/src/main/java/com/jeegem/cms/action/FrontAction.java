package com.jeegem.cms.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.dubbo.config.annotation.Reference;
import com.google.common.collect.Maps;
import com.jeegem.cms.action.base.BaseController;
import com.jeegem.common.model.Article;
import com.jeegem.common.model.ArticleType;
import com.jeegem.common.utils.CommUtil;
import com.jeegem.core.mv.JeeGemModelAndView;
import com.jeegem.core.mybatis.page.Pagination;
import com.jeegem.service.ArticleService;
import com.jeegem.service.ArticleTypeService;

/**
 * 
 * 开发团队：jeegem<br/>
 * 
 * <p>
 * 
 * 用户管理
 * 
 * <p>
 * 
 * 区分 责任人 日期 说明<br/>
 * 创建 jeegem 2016年5月3日 <br/>
 * <p>
 * *******
 * <p>
 * 
 * @author jeegem
 * @email imjcoder@163.com
 * @version 1.0,2016年5月3日 <br/>
 * 
 */
@Controller
public class FrontAction extends BaseController {

	@Reference
	ArticleTypeService articleTypeService;

	@Reference
	ArticleService articleService;

	/**
	 * 用户
	 * 
	 * @return
	 */
	@RequestMapping(value = "/index")
	public ModelAndView userIndex(HttpServletRequest request, HttpServletResponse response, String pageNo) {
		ModelAndView mv = new JeeGemModelAndView(request, "front/index.ftl");

		List<ArticleType> articleTypes = articleTypeService.getAll();

		mv.addObject("articleTypes", articleTypes);

		List<Article> articles = this.articleService.getAll();

		mv.addObject("articles", articles);

		return mv;
	}

	@RequestMapping(value = "/index2")
	public ModelAndView userIndex2(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new JeeGemModelAndView(request, "front/index.ftl");

		List<ArticleType> articleTypes = articleTypeService.getAll();

		mv.addObject("articleTypes", articleTypes);

		List<Article> articles = this.articleService.getAll();

		mv.addObject("articles", articles);

		return mv;
	}

	@RequestMapping(value = "/list")
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response, String pageNo, Article article) {
		ModelAndView mv = new JeeGemModelAndView(request, "front/list.ftl");

		List<ArticleType> articleTypes = articleTypeService.getAll();

		mv.addObject("articleTypes", articleTypes);

		Map<String, Object> params = Maps.newHashMap();
		params.put("pageNo", pageNo);

		Pagination<Article> page = this.articleService.queryForPages(params);

		mv.addObject("page", page);
		params.clear();
		params.put("key", "slide");
		params.put("operator", "=");
		params.put("value", 5);

		List<Article> slides = this.articleService.getByPropertyName(params);

		mv.addObject("slides", slides);

		params.clear();

		List<Article> articles = this.articleService.getByArticle(article);

		mv.addObject("articles", articles);

		return mv;
	}

	@RequestMapping(value = "/content")
	public ModelAndView content(HttpServletRequest request, HttpServletResponse response, Integer id) {
		ModelAndView mv = new JeeGemModelAndView(request, "front/content.ftl");

		List<ArticleType> articleTypes = articleTypeService.getAll();

		mv.addObject("articleTypes", articleTypes);

		Article article = this.articleService.getArticleById(id);

		article.setContent(CommUtil.adddFileServer(article.getContent()));

		mv.addObject("article", article);
		Map<String, Object> params = Maps.newHashMap();
		params.put("key", "slide");
		params.put("operator", "=");
		params.put("value", 5);

		List<Article> slides = this.articleService.getByPropertyName(params);

		mv.addObject("slides", slides);

		return mv;
	}

}
