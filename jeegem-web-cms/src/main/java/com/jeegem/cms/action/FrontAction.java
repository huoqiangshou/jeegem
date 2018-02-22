package com.jeegem.cms.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.dubbo.config.annotation.Reference;
import com.jeegem.cms.action.base.BaseController;
import com.jeegem.common.model.Article;
import com.jeegem.common.model.ArticleType;
import com.jeegem.core.mv.JeeGemModelAndView;
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
		ModelAndView mv = new JeeGemModelAndView(request,"front/index.ftl");
		
		List<ArticleType> articleTypes = articleTypeService.getAll();
		
		mv.addObject("articleTypes", articleTypes);
		
		List<Article> articles = this.articleService.getAll();
		
		mv.addObject("articles", articles);
		
		return mv;
	}

	
}
