package com.jeegem.ueditor.upload;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.jeegem.ueditor.define.State;

public class Uploader {
	private HttpServletRequest request = null;
	private Map<String, Object> conf = null;

	public Uploader(HttpServletRequest request, Map<String, Object> conf) {
		System.out.println("Uploader Uploader");
		this.request = request;
		this.conf = conf;
	}

	public final State doExec() {
		System.out.println("StorageManager doExec");
		String filedName = (String) this.conf.get("fieldName");
		State state = null;

		if ("true".equals(this.conf.get("isBase64"))) {
			state = Base64Uploader.save(this.request.getParameter(filedName),
					this.conf);
		} else {
			state = BinaryUploader.save(this.request, this.conf);
		}

		return state;
	}
}
