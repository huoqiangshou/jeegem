package com.jeegem.ueditor.utils;

import java.io.File;
import java.io.IOException;
import java.util.Properties;

import com.jeegem.ueditor.ftp.SFtpUtil;

public class CommUtil {
	
	public static  String File_URL = null;
	private static Properties prop = new Properties();
	
	static{
		try {
			prop.load(CommUtil.class.getResourceAsStream("/config.properties"));
			File_URL=prop.getProperty("file.url");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 添加文件访问路径
	 * @param content
	 * @return
	 */
	public static String adddFileServer(String content){
		String ret = content.replace("src=\"", "src=\""+prop.getProperty("file.url"));
		return ret;
	}
	
	/**
	 * 图片同步到图片服务器
	 * 
	 * @param srcDir
	 *            图片服务器上相对目录
	 * @param fileName
	 *            图片名称
	 */
	public static synchronized void uploadToSFTPServer(String srcDir, String fileName) {
		// 文件一份上传到本地后,另一份上传到SFTP服务器上面,只针对有SFTP服务器情况
		
		String ip = prop.getProperty("sftp.ip");
		String port = prop.getProperty("sftp.port");
		
		String username = prop.getProperty("sftp.username");
		String pwd = prop.getProperty("sftp.password");
		
		SFtpUtil.connect(ip, Integer.valueOf(port), username, pwd);
		String serverFolder = srcDir.substring(srcDir.indexOf("static"));
		
		SFtpUtil.upload(prop.getProperty("server.folder")+serverFolder, srcDir + File.separator + fileName);
	}
	
}
