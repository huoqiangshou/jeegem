package com.jeegem.cms.action;

import java.io.IOException;

import javax.annotation.Resource;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.TextMessage;
import javax.management.MBeanServerConnection;
import javax.management.remote.JMXConnector;
import javax.management.remote.JMXConnectorFactory;
import javax.management.remote.JMXServiceURL;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jeegem.cms.action.base.BaseController;
import com.jeegem.service.ConsumerService;
import com.jeegem.service.ProducerService;

/**
 * 
 * 开发团队：jeegem<br/>
 * 
 * <p>
 * 
 * 用户管理
 * 
 * <p>
 * 
 * 区分 责任人 日期 说明<br/>
 * 创建 jeegem 2016年5月3日 <br/>
 * <p>
 * *******
 * <p>
 * 
 * @author jeegem
 * @email imjcoder@163.com
 * @version 1.0,2016年5月3日 <br/>
 * 
 */
@Controller
public class ActiveMqAction extends BaseController {

	// 队列名jeegem.activeMQQueue
	@Resource(name = "activeMQQueue")
	private Destination activeMQQueue;

	// 队列消息生产者
	@Resource
	private ProducerService producer;

	// 队列消息消费者
	@Resource
	private ConsumerService consumer;

	@RequestMapping(value = "/onsend")
	public ModelAndView producer(HttpServletRequest request, @RequestParam("message") String message) {
		System.out.println("------------send to jms");
		ModelAndView mv = new ModelAndView();
		producer.sendMessage(activeMQQueue, message);
		mv.setViewName("welcome");
		return mv;
	}

	@RequestMapping(value = "/receive")
	public ModelAndView queue_receive(HttpServletRequest request) throws JMSException {
		System.out.println("------------receive message");
		ModelAndView mv = new ModelAndView();

		TextMessage tm = consumer.receive(activeMQQueue);
		mv.addObject("textMessage", tm.getText());

		mv.setViewName("queue_receive");
		return mv;
	}

	/*
	 * ActiveMQ Manager Test
	 */
	@RequestMapping(value = "/jms", method = RequestMethod.GET)
	public ModelAndView jmsManager() throws IOException {
		System.out.println("------------jms manager");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("welcome");

		JMXServiceURL url = new JMXServiceURL("");
		JMXConnector connector = JMXConnectorFactory.connect(url);
		connector.connect();
		MBeanServerConnection connection = connector.getMBeanServerConnection();

		return mv;
	}

}
