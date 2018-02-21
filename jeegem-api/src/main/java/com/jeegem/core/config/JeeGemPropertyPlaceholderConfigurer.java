package com.jeegem.core.config;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.util.PropertyPlaceholderHelper;

/**
 * <p>
 * Title: JeeGemPropertyPlaceholderConfigurer.java
 * </p>
 * 
 * <p>
 * Description:重写PropertyPlaceholderConfigurer,这样可以在程序中访问配置文件
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
 * @date 2018年2月14日 下午1:22:12
 * 
 * @version JeeGem V3.0
 */
public class JeeGemPropertyPlaceholderConfigurer extends PropertyPlaceholderConfigurer {
	public static Map<String, String> properties = new HashMap<String, String>();
	
	
	protected void processProperties(ConfigurableListableBeanFactory beanFactoryToProcess, Properties props)throws BeansException {
		// cache the properties
		PropertyPlaceholderHelper helper = new PropertyPlaceholderHelper(
				DEFAULT_PLACEHOLDER_PREFIX,DEFAULT_PLACEHOLDER_SUFFIX, DEFAULT_VALUE_SEPARATOR, false);
		for (Entry<Object, Object> entry : props.entrySet()) {
			String stringKey = String.valueOf(entry.getKey());
			String stringValue = String.valueOf(entry.getValue());
			stringValue = helper.replacePlaceholders(stringValue, props);
			properties.put(stringKey, stringValue);
		}
		super.processProperties(beanFactoryToProcess, props);
	}

	public static Map<String, String> getProperties() {
		return properties;
	}

	public static String getProperty(String key) {
		return properties.get(key);
	}
}
