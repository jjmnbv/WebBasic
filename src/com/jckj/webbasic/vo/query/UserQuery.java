/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.vo.query;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;

import javacommon.base.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


public class UserQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** 用户ID */
	private java.lang.Integer userId;
	/** 用户名 */
	private java.lang.String userName;
	/** 密码 */
	private java.lang.String password;
	/** 停用标志              */
	private java.lang.String forbiddenFlag;
	/** 员工id */
	private java.lang.Integer employeeId;
	/** 密码更改时间 */
	private java.util.Date updatePwdTimeBegin;
	private java.util.Date updatePwdTimeEnd;
	/** 更新人 */
	private java.lang.Integer updateUserId;

	public java.lang.Integer getUserId() {
		return this.userId;
	}
	
	public void setUserId(java.lang.Integer value) {
		this.userId = value;
	}
	
	public java.lang.String getUserName() {
		return this.userName;
	}
	
	public void setUserName(java.lang.String value) {
		this.userName = value;
	}
	
	public java.lang.String getPassword() {
		return this.password;
	}
	
	public void setPassword(java.lang.String value) {
		this.password = value;
	}
	
	public java.lang.String getForbiddenFlag() {
		return this.forbiddenFlag;
	}
	
	public void setForbiddenFlag(java.lang.String value) {
		this.forbiddenFlag = value;
	}
	
	public java.lang.Integer getEmployeeId() {
		return this.employeeId;
	}
	
	public void setEmployeeId(java.lang.Integer value) {
		this.employeeId = value;
	}
	
	public java.util.Date getUpdatePwdTimeBegin() {
		return this.updatePwdTimeBegin;
	}
	
	public void setUpdatePwdTimeBegin(java.util.Date value) {
		this.updatePwdTimeBegin = value;
	}	
	
	public java.util.Date getUpdatePwdTimeEnd() {
		return this.updatePwdTimeEnd;
	}
	
	public void setUpdatePwdTimeEnd(java.util.Date value) {
		this.updatePwdTimeEnd = value;
	}
	
	public java.lang.Integer getUpdateUserId() {
		return this.updateUserId;
	}
	
	public void setUpdateUserId(java.lang.Integer value) {
		this.updateUserId = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

