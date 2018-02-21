package com.jeegem.rediscache;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.jeegem.common.model.Article;
import com.jeegem.service.ArticleService;
import com.jeegem.service.test.BaseJunitTest;

/**
 * <p>
 * Title: TestRedis.java
 * </p>
 * 
 * <p>
 * Description: 
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
 * @date 2018年2月22日 上午1:33:27
 * 
 * @version JeeGem V3.0
 */
public class TestRedisCache extends BaseJunitTest{
	
	@Autowired
	private ArticleService articleService;
	
	@Test  
    public void test0(){
		Article article = articleService.getArticleById(2L);
		System.out.println(article);
		
		Article article2 = articleService.getArticleById(2L);
		System.out.println(article2);
    }  
	
}

























