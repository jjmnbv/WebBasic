/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.model;

import javax.validation.constraints.*;
import org.hibernate.validator.constraints.*;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import javacommon.base.*;

import cn.org.rapid_framework.util.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


public class User extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "User";
	public static final String ALIAS_USER_ID = "用户ID";
	public static final String ALIAS_USER_NAME = "用户名";
	public static final String ALIAS_PASSWORD = "密码";
	public static final String ALIAS_FORBIDDEN_FLAG = "停用标志             ";
	public static final String ALIAS_EMPLOYEE_ID = "员工id";
	public static final String ALIAS_UPDATE_PWD_TIME = "密码更改时间";
	public static final String ALIAS_UPDATE_USER_ID = "更新人";
	
	//date formats
	public static final String FORMAT_UPDATE_PWD_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
    /**
     * 用户ID       db_column: USER_ID 
     */	
	
	private java.lang.Integer userId;
    /**
     * 用户名       db_column: USER_NAME 
     */	
	@NotBlank @Length(max=20)
	private java.lang.String userName;
    /**
     * 密码       db_column: PASSWORD 
     */	
	@NotBlank @Length(max=20)
	private java.lang.String password;
    /**
     * 停用标志                    db_column: FORBIDDEN_FLAG 
     */	
	@NotBlank @Length(max=1)
	private java.lang.String forbiddenFlag;
    /**
     * 员工id       db_column: EMPLOYEE_ID 
     */	
	@NotNull 
	private java.lang.Integer employeeId;
    /**
     * 密码更改时间       db_column: UPDATE_PWD_TIME 
     */	
	@NotNull 
	private java.util.Date updatePwdTime;
    /**
     * 更新人       db_column: UPDATE_USER_ID 
     */	
	@NotNull 
	private java.lang.Integer updateUserId;
	//columns END

	public User(){
	}

	public User(
		java.lang.Integer userId
	){
		this.userId = userId;
	}

	public void setUserId(java.lang.Integer value) {
		this.userId = value;
	}
	
	public java.lang.Integer getUserId() {
		return this.userId;
	}
	public void setUserName(java.lang.String value) {
		this.userName = value;
	}
	
	public java.lang.String getUserName() {
		return this.userName;
	}
	public void setPassword(java.lang.String value) {
		this.password = value;
	}
	
	public java.lang.String getPassword() {
		return this.password;
	}
	public void setForbiddenFlag(java.lang.String value) {
		this.forbiddenFlag = value;
	}
	
	public java.lang.String getForbiddenFlag() {
		return this.forbiddenFlag;
	}
	public void setEmployeeId(java.lang.Integer value) {
		this.employeeId = value;
	}
	
	public java.lang.Integer getEmployeeId() {
		return this.employeeId;
	}
	public String getUpdatePwdTimeString() {
		return DateConvertUtils.format(getUpdatePwdTime(), FORMAT_UPDATE_PWD_TIME);
	}
	public void setUpdatePwdTimeString(String value) {
		setUpdatePwdTime(DateConvertUtils.parse(value, FORMAT_UPDATE_PWD_TIME,java.util.Date.class));
	}
	
	public void setUpdatePwdTime(java.util.Date value) {
		this.updatePwdTime = value;
	}
	
	public java.util.Date getUpdatePwdTime() {
		return this.updatePwdTime;
	}
	public void setUpdateUserId(java.lang.Integer value) {
		this.updateUserId = value;
	}
	
	public java.lang.Integer getUpdateUserId() {
		return this.updateUserId;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("UserId",getUserId())
			.append("UserName",getUserName())
			.append("Password",getPassword())
			.append("ForbiddenFlag",getForbiddenFlag())
			.append("EmployeeId",getEmployeeId())
			.append("UpdatePwdTime",getUpdatePwdTime())
			.append("UpdateUserId",getUpdateUserId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getUserId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof User == false) return false;
		if(this == obj) return true;
		User other = (User)obj;
		return new EqualsBuilder()
			.append(getUserId(),other.getUserId())
			.isEquals();
	}
}

