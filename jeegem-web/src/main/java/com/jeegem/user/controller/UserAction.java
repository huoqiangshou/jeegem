package com.jeegem.user.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Maps;
import com.jeegem.common.controller.BaseController;
import com.jeegem.common.model.User;
import com.jeegem.core.mv.JeeGemModelAndView;
import com.jeegem.core.mybatis.page.Pagination;
import com.jeegem.service.UserService;

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
@Scope(value = "prototype")
public class UserAction extends BaseController {
	
	@Autowired
	@Qualifier("jeegemUserService")
	UserService userService;
	
	/**
	 * 用户
	 * 
	 * @return
	 */
	@RequestMapping(value = "/user/list", method = RequestMethod.GET)
	public ModelAndView userIndex(HttpServletRequest request,HttpServletResponse response,String pageNo) {
		ModelAndView mv = new JeeGemModelAndView("user/list.ftl");
		
		Map<String,Object> params = Maps.newHashMap();
		params.put("pageNo", pageNo);
		
		Pagination<User> page = userService.queryForPages(params);
		
		mv.addObject("page", page);
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
