package com.jeegem.permission.bo;

import java.io.Serializable;

import com.jeegem.common.model.Role;
import com.jeegem.common.utils.StringUtils;

public class RoleBo extends Role implements Serializable{
	private static final long serialVersionUID = 1L;
	/**
	 * 用户ID (用String， 考虑多个ID，现在只有一个ID)
	 */
	private String userId;
	/**
	 * 是否勾选
	 */
	private String marker;
	
	private String roleId;
	
	public boolean isCheck(){
//		return StringUtils.equals(userId,marker);
		return StringUtils.isNotBlank(userId) && StringUtils.isNotBlank(roleId);
	}
	public String getMarker() {
		return marker;
	}

	public void setMarker(String marker) {
		this.marker = marker;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
}
