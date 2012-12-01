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


public class Group extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Group";
	public static final String ALIAS_GROUP_ID = "权限组ID";
	public static final String ALIAS_GROUP_NAME = "角色名称";
	public static final String ALIAS_SPECIFICATION = "说明";
	public static final String ALIAS_UPDATE_TIME = "机构ID";
	
	//date formats
	public static final String FORMAT_UPDATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
    /**
     * 权限组ID       db_column: GROUP_ID 
     */	
	
	private java.lang.Integer groupId;
    /**
     * 角色名称       db_column: GROUP_NAME 
     */	
	@NotBlank @Length(max=20)
	private java.lang.String groupName;
    /**
     * 说明       db_column: SPECIFICATION 
     */	
	@Length(max=40)
	private java.lang.String specification;
    /**
     * 机构ID       db_column: UPDATE_TIME 
     */	
	@NotNull 
	private java.util.Date updateTime;
	//columns END

	public Group(){
	}

	public Group(
		java.lang.Integer groupId
	){
		this.groupId = groupId;
	}

	public void setGroupId(java.lang.Integer value) {
		this.groupId = value;
	}
	
	public java.lang.Integer getGroupId() {
		return this.groupId;
	}
	public void setGroupName(java.lang.String value) {
		this.groupName = value;
	}
	
	public java.lang.String getGroupName() {
		return this.groupName;
	}
	public void setSpecification(java.lang.String value) {
		this.specification = value;
	}
	
	public java.lang.String getSpecification() {
		return this.specification;
	}
	public String getUpdateTimeString() {
		return DateConvertUtils.format(getUpdateTime(), FORMAT_UPDATE_TIME);
	}
	public void setUpdateTimeString(String value) {
		setUpdateTime(DateConvertUtils.parse(value, FORMAT_UPDATE_TIME,java.util.Date.class));
	}
	
	public void setUpdateTime(java.util.Date value) {
		this.updateTime = value;
	}
	
	public java.util.Date getUpdateTime() {
		return this.updateTime;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("GroupId",getGroupId())
			.append("GroupName",getGroupName())
			.append("Specification",getSpecification())
			.append("UpdateTime",getUpdateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getGroupId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Group == false) return false;
		if(this == obj) return true;
		Group other = (Group)obj;
		return new EqualsBuilder()
			.append(getGroupId(),other.getGroupId())
			.isEquals();
	}
}

