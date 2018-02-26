package com.jeegem.service.impl;

import javax.annotation.Resource;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import com.jeegem.service.ProducerService;

/**
 * <p>
 * Title: ProduceServiceImpl.java
 * </p>
 * 
 * <p>
 * Description:消息队列生产者
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
 * @date 2018年2月23日 下午8:08:53
 * 
 * @version JeeGem V3.0
 */
@Service
public class ProduceServiceImpl implements ProducerService {
	@Resource(name = "jmsTemplate")
	private JmsTemplate jmsTemplate;

	/**
	 * 向指定队列发送消息
	 * @see com.jeegem.service.ProducerService#sendMessage(org.apache.activemq.broker.region.Destination,
	 *      java.lang.String)
	 */
	@Override
	public void sendMessage(Destination destination, String msg) {
		System.out.println("向队列" + destination.toString() + "发送了消息------------" + msg);
		try {
			jmsTemplate.send(destination, new MessageCreator() {
				public Message createMessage(Session session) throws JMSException {
					return session.createTextMessage(msg);
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 向默认队列发送消息
	 * @see com.jeegem.service.ProducerService#sendMessage(java.lang.String)
	 */
	@Override
	public void sendMessage(String msg) {
		String destination = jmsTemplate.getDefaultDestination().toString();
		System.out.println("向队列" + destination + "发送了消息------------" + msg);
		jmsTemplate.send(new MessageCreator() {
			public Message createMessage(Session session) throws JMSException {
				return session.createTextMessage(msg);
			}
		});

	}

}
