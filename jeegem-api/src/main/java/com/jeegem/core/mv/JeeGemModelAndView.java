package com.jeegem.core.mv;

import org.springframework.web.servlet.ModelAndView;

/**
 * <p>
 * Title: JeeGemModelAndView.java
 * </p>
 * 
 * <p>
 * Description: 顶级视图管理类，封装ModelAndView并进行系统扩展
 * </p>
 * 
 * <p>
 * Copyright: Copyright (c) 2014
 * </p>
 * 
 * <p>
 * Company: www.redpigmall.net
 * </p>
 * 
 * @author redpig
 * 
 * @date 2016-4-24
 * 
 * @version redpigmall_b2b2c 5.0
 */
public class JeeGemModelAndView extends ModelAndView {
	
	public JeeGemModelAndView() {
		
	}
	
	public JeeGemModelAndView(String viewName) {
		super.setViewName("WEB-INF/ftl/"+viewName);
	}
	
	public JeeGemModelAndView(String viewName,String attributeName,Object attributeValue) {
		super.addObject(attributeName, attributeValue);
		super.setViewName("WEB-INF/ftl/"+viewName);
	}
	
	
}
