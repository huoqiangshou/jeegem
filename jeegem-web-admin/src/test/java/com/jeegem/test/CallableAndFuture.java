package com.jeegem.test;

import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/**
 * <p>
 * Title: CallableAndFuture.java
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
 * @date 2018年2月21日 下午4:31:43
 * 
 * @version JeeGem V3.0
 */
public class CallableAndFuture {
    public static void main(String[] args) {
        Callable<Integer> callable = new Callable<Integer>() {
            public Integer call() throws Exception {
                return new Random().nextInt(100);
            }
        };
        FutureTask<Integer> future = new FutureTask<Integer>(callable);
        new Thread(future).start();
        try {
            Thread.sleep(5000);// 可能做一些事情
            System.out.println(future.get());
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }
    }
}
