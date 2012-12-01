/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.model;

import javax.validation.constraints.*;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import javacommon.base.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


public class GroupUser extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "GroupUser";
	public static final String ALIAS_GROUP_USER_ID = "用户角色表ID";
	public static final String ALIAS_USER_ID = "用户ID";
	public static final String ALIAS_GROUP_ID = "角色ID";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
    /**
     * 用户角色表ID       db_column: GROUP_USER_ID 
     */	
	
	private java.lang.Integer groupUserId;
    /**
     * 用户ID       db_column: USER_ID 
     */	
	@NotNull 
	private java.lang.Integer userId;
    /**
     * 角色ID       db_column: GROUP_ID 
     */	
	@NotNull 
	private java.lang.Integer groupId;
	//columns END

	public GroupUser(){
	}

	public GroupUser(
		java.lang.Integer groupUserId
	){
		this.groupUserId = groupUserId;
	}

	public void setGroupUserId(java.lang.Integer value) {
		this.groupUserId = value;
	}
	
	public java.lang.Integer getGroupUserId() {
		return this.groupUserId;
	}
	public void setUserId(java.lang.Integer value) {
		this.userId = value;
	}
	
	public java.lang.Integer getUserId() {
		return this.userId;
	}
	public void setGroupId(java.lang.Integer value) {
		this.groupId = value;
	}
	
	public java.lang.Integer getGroupId() {
		return this.groupId;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("GroupUserId",getGroupUserId())
			.append("UserId",getUserId())
			.append("GroupId",getGroupId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getGroupUserId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof GroupUser == false) return false;
		if(this == obj) return true;
		GroupUser other = (GroupUser)obj;
		return new EqualsBuilder()
			.append(getGroupUserId(),other.getGroupUserId())
			.isEquals();
	}
}

