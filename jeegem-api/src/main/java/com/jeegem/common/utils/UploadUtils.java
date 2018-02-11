package com.jeegem.common.utils;

import java.awt.image.BufferedImage;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;


/**
 * <p>
 * Title: UploadUtils.java
 * </p>
 * 
 * <p>
 * Description: 所有上传文件的工具类
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
 * @date 2018年2月9日 下午5:27:46
 * 
 * @version JeeGem V3.0
 */
public class UploadUtils {
	
	/**
	 * saveFileToServer 上传文件保存到服务器
	 * 
	 * @param fileName为上传文件的名称
	 * 
	 * @param saveFilePathName为文件保存全路径
	 * @param saveFileName为保存的文件
	 * @param extendes为允许的文件扩展名
	 *  
	 * @return 返回一个map，map中有4个值，第一个为保存的文件名fileName,第二个为保存的文件大小fileSize,,
	 *         第三个为保存文件时错误信息errors,如果生成缩略图则map中保存smallFileName，表示缩略图的全路径
	 */
	public static Map<String, Object> saveFileToServer(HttpServletRequest request, String fileName,
			String saveFilePathName, String saveFileName, String[] extendes) throws IOException {
		/**
		 * 通过springMVC提供的上传工具
		 */
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		CommonsMultipartFile file = (CommonsMultipartFile) multipartRequest.getFile(fileName);
		
		Map<String, Object> map = Maps.newHashMap();
		if (file != null && !file.isEmpty()) {

			// 文件后缀
			String extend = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1)
					.toLowerCase();
			// 随机给个名字
			if (saveFileName == null || saveFileName.trim().equals("")) {
				saveFileName = UUID.randomUUID().toString() + "." + extend;
			}

			// 加上后缀
			if (saveFileName.lastIndexOf(".") < 0) {
				saveFileName = saveFileName + "." + extend;
			}

			// 返回文件大小，单位为k
			long fileSize = file.getSize();
			List<String> errors = Lists.newArrayList();

			boolean flag = true;
			if (extendes != null) {
				for (String s : extendes) {
					if (extend.toLowerCase().equals(s))
						flag = true;
				}
			}

			if (flag) {
				File path = new File(saveFilePathName);

				if (!path.exists()) {
					path.mkdir();
				}
				// 文件写入磁盘
				DataOutputStream out = new DataOutputStream(
						new FileOutputStream(saveFilePathName + File.separator + saveFileName));

				InputStream is = null;
				try {
					is = file.getInputStream();
					int size = (int) (fileSize);
					byte[] buffer = new byte[size];
					while (is.read(buffer) > 0) {
						out.write(buffer);
					}
				} catch (IOException e) {
					e.printStackTrace();
				} finally {
					if (is != null) {
						is.close();
					}
					if (out != null) {
						out.close();
					}
				}

				
				// 如果是图片,返回图片尺寸
				if (isImg(extend)) {
					File img = new File(saveFilePathName + File.separator + saveFileName);
					try {
						BufferedImage bis = ImageIO.read(img);
						int w = bis.getWidth();
						int h = bis.getHeight();
						map.put("width", w);
						map.put("height", h);
					} catch (Exception e) {
						// map.put("width", 200);
						// map.put("heigh", 100);
					}
				}
				map.put("mime", extend);
				map.put("fileName", saveFileName);
				map.put("fileSize", fileSize);
				map.put("error", errors);
				map.put("oldName", file.getOriginalFilename());
				// System.out.println("上传结束，生成的文件名为:" + fileName);
			} else {
				// System.out.println("不允许的扩展名");
				errors.add("不允许的扩展名");
			}
		} else {
			map.put("width", 0);
			map.put("height", 0);
			map.put("mime", "");
			map.put("fileName", "");
			map.put("fileSize", 0.0f);
			map.put("oldName", "");
		}
		return map;
	}
	
	/**
	 * 判断是否是图片
	 * @param extend
	 * @return
	 */
	public static boolean isImg(String extend) {
		boolean ret = false;
		List<String> list = Lists.newArrayList();
		list.add("jpg");
		list.add("jpeg");
		list.add("bmp");
		list.add("gif");
		list.add("png");
		list.add("tif");
		list.add("tbi");
		for (String s : list) {
			if (s.equals(extend)) {
				ret = true;
			}
		}
		return ret;
	}
	
}
