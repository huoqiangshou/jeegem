package com.jeegem.user.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
import com.jeegem.common.utils.UploadUtils;
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
	private UserService userService;

	/**
	 * 用户
	 * 
	 * @return
	 */
	@RequestMapping(value = "/user/list")
	public ModelAndView userIndex(HttpServletRequest request, HttpServletResponse response, String pageNo) {
		ModelAndView mv = new JeeGemModelAndView("user/list.ftl");

		Map<String, Object> params = Maps.newHashMap();
		params.put("pageNo", pageNo);

		Pagination<User> page = userService.queryForPages(params);

		mv.addObject("page", page);

		return mv;
	}

	/**
	 * 更新操作
	 * 
	 * @return 返回更新数量
	 * @throws Exception
	 */
	@RequestMapping(value = "/user/updateByAjax", method = RequestMethod.POST)
	public void updateByAjax(HttpServletRequest request, HttpServletResponse response, User user) throws Exception {

		String saveFilePathName = request.getSession().getServletContext().getRealPath("/") + "upload";

		Map<String, Object> map = UploadUtils.saveFileToServer(request, "userPhoto", saveFilePathName, null, null);

		user.setPhoto(saveFilePathName + File.separator + map.get("fileName"));
		int ret = this.userService.updateById(user);

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
	
	
}
