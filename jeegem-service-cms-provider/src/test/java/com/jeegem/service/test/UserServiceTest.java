package com.jeegem.service.test;

import java.util.Map;

import org.junit.Test;

import com.alibaba.dubbo.config.annotation.Reference;
import com.google.common.collect.Maps;
import com.jeegem.service.ArticleService;


public class UserServiceTest extends BaseJunitTest {
	
	@Reference
	private ArticleService articleService;
	
	@Test  
    public void test0(){
		Map<String,Object> params = Maps.newHashMap();
		params.put("slide", 5);
		
		System.out.println(articleService.getArticleById(2));
    }  
	
}
