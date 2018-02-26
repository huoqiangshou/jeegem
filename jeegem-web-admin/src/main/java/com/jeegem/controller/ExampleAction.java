package com.jeegem.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jeegem.common.controller.BaseController;
import com.jeegem.core.mv.JeeGemModelAndView;

/**
 * 
 * <p>
 * Title: ArticleAction.java
 * </p>
 * 
 * <p>
 * Description: 案例页跳转
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
public class ExampleAction extends BaseController {


	/**
	 * 
	 * @return
	 */
	@RequestMapping(value = "/example/{page}", method = RequestMethod.GET)
	public ModelAndView calendar(HttpServletRequest request, HttpServletResponse response,@PathVariable String page) {
		ModelAndView mv = new JeeGemModelAndView(request,"example/"+page+".ftl");
		
		return mv;
	}

}
