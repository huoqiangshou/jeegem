package com.jeegem.service;

import javax.jms.Destination;
/**
 * <p>
 * Title: ProducerService.java
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
 * @date 2018年2月23日 下午8:07:51
 * 
 * @version JeeGem V3.0
 */
public interface ProducerService {

	/**
	 * 向指定队列发送消息
	 */
	public void sendMessage(Destination destination, final String msg);

	/**
	 * 向默认队列发送消息
	 */
	public void sendMessage(final String msg);
}
