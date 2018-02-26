package com.jeegem.core.cache;

import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

import org.apache.ibatis.cache.Cache;

/**
 * <p>
 * Title: RedisCache.java
 * </p>
 * 
 * <p>
 * Description:使用第三方内存数据库Redis作为二级缓存
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
 * @date 2018年2月22日 上午14:21:54
 * 
 * @version JeeGem V3.0
 */
public class RedisCache implements Cache {
	private final ReadWriteLock readWriteLock = new ReentrantReadWriteLock();

	private String id;

	public RedisCache(final String id) {
		if (id == null) {
			throw new IllegalArgumentException("Cache instances require an ID");
		}
		this.id = id;

	}

	public String getId() {
		return this.id;
	}

	public void putObject(Object key, Object value) {
		JedisUtil.getJedis().set(SerializeUtil.serialize(key.toString()), SerializeUtil.serialize(value));

	}

	public Object getObject(Object key) {
		Object value = SerializeUtil.unserialize(JedisUtil.getJedis().get(SerializeUtil.serialize(key.toString())));
		return value;

	}

	public Object removeObject(Object key) {
		return JedisUtil.getJedis().expire(SerializeUtil.serialize(key.toString()), 0);

	}

	public void clear() {
		JedisUtil.getJedis().flushDB();
		JedisUtil.getJedis().close();
	}

	public int getSize() {
		return Integer.valueOf(JedisUtil.getJedis().dbSize().toString());
	}

	public ReadWriteLock getReadWriteLock() {
		return readWriteLock;
	}

}
