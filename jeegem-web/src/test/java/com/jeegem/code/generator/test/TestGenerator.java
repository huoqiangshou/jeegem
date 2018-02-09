package com.jeegem.code.generator.test;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.output.FileWriterWithEncoding;
import org.junit.Test;

import freemarker.template.Configuration;
import freemarker.template.Template;

public class TestGenerator {
	
	@Test
	public void testGen() throws Exception {
		
		Configuration configuration = new Configuration();
		configuration.setDirectoryForTemplateLoading(new File(""));
		configuration.setDefaultEncoding("UTF-8");
		// 获取或创建一个模版,freemarker文件后缀名可以任意写的,我这里写的是.vm,这样更容易看出来是模板.
		//但是要关联下编辑器为freemarker编辑器.
		Template template = configuration.getTemplate("src/test/java/com/jeegem/code/generator/test/test.vm");
		// 获取html静态页面文件
		String indexPath = "d:\\index2.html";
		// 设置文件输入流编码，不然生成的html文件会中文乱码
		FileWriterWithEncoding out = new FileWriterWithEncoding(indexPath, "UTF-8");
		// 将页面中要展示的数据放入一个map中
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("Lauguage", "中文");
		maps.put("name", "王辉");
		maps.put("password", "!@#QWEASD");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("maps", maps);
		
		// 将map中的数据输入到index.ftl这个模板文件中并遍历出来，最后再将整个模板的数据写入到index.html中。
		template.process(map, out);
		out.close();

	}

}
