package com.jeegem.core.shiro.cache;

import org.apache.shiro.cache.Cache;

/**
 * 
 * 开发团队：jeegem <p>
 * 
 *   <p>
 * <p>
 * 
 * shiro cache manager 接口
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
public interface ShiroCacheManager {

    <K, V> Cache<K, V> getCache(String name);

    void destroy();

}
