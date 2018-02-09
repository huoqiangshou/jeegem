package com.jeegem.user.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeegem.common.controller.BaseController;
import com.jeegem.common.model.User;
import com.jeegem.common.utils.LoggerUtils;
import com.jeegem.core.mv.JeeGemModelAndView;
import com.jeegem.core.shiro.token.manager.TokenManager;
import com.jeegem.user.manager.UserManager;
import com.jeegem.user.service.UserService;

import net.sf.json.JSONObject;

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
 * 区分　责任人　日期　　　　说明<br/>
 * 创建　jeegem　2016年5月3日 　<br/>
 * <p>
 * *******
 * <p>
 * @author jeegem
 * @email  imjcoder@163.com
 * @version 1.0,2016年5月3日 <br/>
 * 
 */
@Controller
@Scope(value="prototype")
@RequestMapping("user")
public class UserCoreController extends BaseController {

	@Resource
	UserService userService;
	/**
	 * 个人资料
	 * @return
	 */
	@RequestMapping(value="index",method=RequestMethod.GET)
	public ModelAndView userIndex(String opt){
		ModelAndView mav = new JeeGemModelAndView("user/index.ftl");
		
		mav.addObject("opt", opt);
		return mav;
	}
	
	/**
	 * 偷懒一下，通用页面跳转
	 * @param page
	 * @return
	 */
	@RequestMapping(value="{page}",method=RequestMethod.GET)
	public ModelAndView toPage(@PathVariable("page")String page){
		return new JeeGemModelAndView(String.format("user/%s", page));
	}
	/**
	 * 密码修改
	 * @return
	 */
	@RequestMapping(value="updatePswd",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> updatePswd(String pswd,String newPswd){
		//根据当前登录的用户帐号 + 老密码，查询。
		String email = TokenManager.getToken().getEmail();
				pswd = UserManager.md5Pswd(email, pswd);
		User	user = userService.login(email, pswd);
		
		if("admin".equals(email)){
			resultMap.put("status", 300);
			resultMap.put("message", "管理员不准修改密码。");
			return resultMap;
		}
		
		if(null == user){
			resultMap.put("status", 300);
			resultMap.put("message", "密码不正确！");
		}else{
			user.setPswd(newPswd);
			//加工密码
			user = UserManager.md5Pswd(user);
			//修改密码
			userService.updateByPrimaryKeySelective(user);
			resultMap.put("status", 200);
			resultMap.put("message", "修改成功!");
			//重新登录一次
			TokenManager.login(user, Boolean.TRUE);
		}
		return resultMap;
	}
	
	/**
	 * 个人资料修改保存
	 * @return
	 */
	@RequestMapping(value="updateSelf",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> updateSelf(HttpServletRequest request,User entity){
		try {
			userService.updateByPrimaryKeySelective(entity);
			resultMap.put("status", 200);
			resultMap.put("message", "修改成功!");
		} catch (Exception e) {
			resultMap.put("status", 500);
			resultMap.put("message", "修改失败!");
			LoggerUtils.fmtError(getClass(), e, "修改个人资料出错。[%s]", JSONObject.fromObject(entity).toString());
		}
		return resultMap;
	}
	
	/**
	 * 个人资料修改
	 * @return
	 */
	@RequestMapping(value="updateProfile",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView updateProfile(){
		ModelAndView mav = new JeeGemModelAndView("user/updateSelf.ftl");
		
		User u = TokenManager.getToken();
		
		User user = userService.findUserByEmail(u.getEmail());
		
		mav.addObject("user", user);
		
		return mav;
	}
	
	
}
