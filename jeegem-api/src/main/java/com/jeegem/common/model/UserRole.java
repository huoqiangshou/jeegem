package com.jeegem.common.model;

import java.io.Serializable;

import net.sf.json.JSONObject;
/**
 * 
 * 开发团队：jeegem<br/>
 * 
 * <p>
 * 
 * 用户{@link User} 和角色 {@link Role} 中间表
 * 
 * <p>
 * 
 * 区分　责任人　日期　　　　说明<br/>
 * 创建　jeegem　2016年5月25日 　<br/>
 * <p>
 * *******
 * <p>
 * @author jeegem
 * @email  imjcoder@163.com
 * @version 1.0,2016年5月25日 <br/>
 * 
 */
public class UserRole  implements Serializable{
	private static final long serialVersionUID = 1L;
	 /**{@link User.id}*/
    private Long uid;
    /**{@link Role.id}*/
    private Long rid;

    public UserRole(Long uid,Long rid) {
    	this.uid = uid;
    	this.rid = rid;
	}
    public UserRole() {
    }
    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public Long getRid() {
        return rid;
    }

    public void setRid(Long rid) {
        this.rid = rid;
    }
    public String toString(){
    	return JSONObject.fromObject(this).toString();
    }
}