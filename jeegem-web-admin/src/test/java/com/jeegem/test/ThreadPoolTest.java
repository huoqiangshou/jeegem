package com.jeegem.test;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.junit.Test;

/**
 * <p>
 * Title: ThreadPoolTest.java
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
 * @date 2018年2月21日 下午5:50:33
 * 
 * @version JeeGem V3.0
 */
public class ThreadPoolTest {

	@Test
	public void test1() {
		ExecutorService cachedThreadPool = Executors.newCachedThreadPool();
		for (int i = 0; i < 10; i++) {
			int index = i;
			cachedThreadPool.execute(new Runnable() {
				@Override
				public void run() {
					System.out.println(index);
				}
			});
		}
	}

	@Test
	public void test2() {
		ExecutorService fixedThreadPool = Executors.newFixedThreadPool(3);
		for (int i = 0; i < 10; i++) {
			int index = i;
			fixedThreadPool.execute(new Runnable() {

				@Override
				public void run() {
						System.out.println(index);
				}
			});
		}
	}

	@Test
	public void test3() {
		ExecutorService singleThreadExecutor = Executors.newSingleThreadExecutor();
		for (int i = 0; i < 10; i++) {
			int index = i;
			singleThreadExecutor.execute(new Runnable() {

				@Override
				public void run() {
					System.out.println(index);

				}
			});
		}
	}

}
