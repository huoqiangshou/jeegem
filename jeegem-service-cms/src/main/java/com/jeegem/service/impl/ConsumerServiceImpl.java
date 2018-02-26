package com.jeegem.service.impl;

import javax.annotation.Resource;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.TextMessage;

import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Service;

import com.jeegem.service.ConsumerService;

/**
 * <p>
 * Title: ConsumerServiceImpl.java
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
 * @date 2018年2月23日 下午8:12:48
 * 
 * @version JeeGem V3.0
 */
@Service
public class ConsumerServiceImpl implements ConsumerService {
	@Resource(name = "jmsTemplate")
	private JmsTemplate jmsTemplate;

	/**
	 * 接收消息
	 * 
	 * @see com.jeegem.service.ConsumerService#receive(javax.jms.Destination)
	 */
	@Override
	public TextMessage receive(Destination destination) {
		try {
			TextMessage tm = (TextMessage) jmsTemplate.receive(destination);
			System.out.println("从队列" + destination.toString() + "收到了消息：\t" + tm.getText());
			return tm;
		} catch (JMSException e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}


	}

}
