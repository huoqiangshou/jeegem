package com.jeegem.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jeegem.common.controller.BaseController;
import com.jeegem.core.mybatis.page.Pagination;
import com.jeegem.permission.bo.UPermissionBo;
import com.jeegem.permission.bo.URoleBo;
import com.jeegem.permission.bo.UserRoleAllocationBo;
import com.jeegem.permission.service.PermissionService;
import com.jeegem.user.service.UUserService;
/**
 * 
 * 开发团队：jeegem <p>
 * 
 *  <p>
 * <p>
 * 
 * 用户角色分配
 * 
 * <p>
 * 
 * 区分　责任人　日期　　　　说明<br/>
 * 创建　jeegem　2016年6月2日 　<br/>
 *
 * @author jeegem
 * imjcoder@163.com
 * @version 1.0,2016年6月2日 <br/>
 * 
 */
@Controller
@Scope(value="prototype")
@RequestMapping("user")
public class UserRoleAllocation2Controller extends BaseController {
	@Autowired
	UUserService userService;
	@Autowired
	PermissionService permissionService;
	/**
	 * 用户角色权限分配
	 * @param modelMap
	 * @param pageNo
	 * @param findContent
	 * @return
	 */
	@RequestMapping(value="allocation2")
	public ModelAndView allocation(ModelMap modelMap,Integer pageNo,String findContent){
		modelMap.put("findContent", findContent);
		Pagination<UserRoleAllocationBo> boPage = userService.findUserAndRole(modelMap,pageNo,pageSize);
		modelMap.put("page", boPage);
		return new ModelAndView("role/allocation");
	}
	
	/**
	 * 选择角色
	 * @param modelMap
	 * @param pageNo
	 * @param findContent
	 * @return
	 */
	@RequestMapping(value="chooseRole",method=RequestMethod.GET)
	public ModelAndView chooseRole(Long id){
		List<URoleBo> roles = userService.selectRoleByUserId(id);
		
		ModelAndView mav = new ModelAndView("role/chooseRole");
		mav.addObject("roles", roles);
		mav.addObject("userRoleId", id);
		return mav;
	}
	
}
