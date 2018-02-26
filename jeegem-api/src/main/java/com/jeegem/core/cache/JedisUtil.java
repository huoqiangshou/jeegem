package com.jeegem.core.cache;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

/**
 * <p>
 * Title: redisUtil.java
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
 * @date 2018年2月22日 上午3:03:35
 * 
 * @version JeeGem V3.0
 */
public class JedisUtil {
	private static String ADDR = "192.168.0.102";
    private static int PORT = 6379;
    private static String AUTH = "zhou123456";
    
//    private static int MAX_ACTIVE = 1024;
    
    private static int MAX_IDLE = 200;
    
    private static int MAX_WAIT = 10000;
    
    private static int TIMEOUT = 10000;
    
    private static boolean TEST_ON_BORROW = true;
    
    private static JedisPool jedisPool = null;
    
    static {
        try{
            JedisPoolConfig config = new JedisPoolConfig();
            config.setMaxIdle(MAX_IDLE);
            config.setMaxWaitMillis(MAX_WAIT);
            config.setTestOnBorrow(TEST_ON_BORROW);
            jedisPool = new JedisPool(config,ADDR,PORT,TIMEOUT,AUTH);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public synchronized static Jedis getJedis(){
        try{
            if(jedisPool != null){
                Jedis jedis = jedisPool.getResource();
                return jedis;
            }else{
                return null;
            }
        }catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    @SuppressWarnings("deprecation")
	public static void returnResource(final Jedis jedis){
        if(jedis != null){
            jedisPool.returnResource(jedis);
        }
    }
    /** 
     * Jedis对象出异常的时候，回收Jedis对象资源 
     *  
     * @param jedis 
     */  
    @SuppressWarnings("deprecation")
	public synchronized void returnBrokenResource(Jedis jedis) {  
        if (jedis != null) {  
            jedisPool.returnBrokenResource(jedis);  
        }  
  
    }  
}
