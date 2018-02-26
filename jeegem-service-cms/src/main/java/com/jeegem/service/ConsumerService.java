package com.jeegem.service;

import javax.jms.Destination;
import javax.jms.TextMessage;

/**
 * <p>
 * Title: ConsumerService.java
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
 * @date 2018年2月23日 下午8:12:18
 * 
 * @version JeeGem V3.0
 */
public interface ConsumerService {
	public TextMessage receive(Destination destination);
}
