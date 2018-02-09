package com.jeegem.user.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jeegem.common.controller.BaseController;
import com.jeegem.core.mv.JeeGemModelAndView;
import com.jeegem.user.service.UserService;

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

	@Resource
	UserService userService;

	/**
	 * 个人资料
	 * 
	 * @return
	 */
	@RequestMapping(value = "/user/list", method = RequestMethod.GET)
	public ModelAndView userIndex(String opt) {
		ModelAndView mav = new JeeGemModelAndView("user/list.ftl");
		
		mav.addObject("opt", opt);
		
		
		
		
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
