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


public class PermissionGroup extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "PermissionGroup";
	public static final String ALIAS_PERMISSION_GROUP_ID = "用户组权限表ID";
	public static final String ALIAS_PERMISSION_ID = "权限ID";
	public static final String ALIAS_GROUP_ID = "角色ID";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
    /**
     * 用户组权限表ID       db_column: PERMISSION_GROUP_ID 
     */	
	
	private java.lang.Integer permissionGroupId;
    /**
     * 权限ID       db_column: PERMISSION_ID 
     */	
	@NotNull 
	private java.lang.Integer permissionId;
    /**
     * 角色ID       db_column: GROUP_ID 
     */	
	@NotNull 
	private java.lang.Integer groupId;
	//columns END

	public PermissionGroup(){
	}

	public PermissionGroup(
		java.lang.Integer permissionGroupId
	){
		this.permissionGroupId = permissionGroupId;
	}

	public void setPermissionGroupId(java.lang.Integer value) {
		this.permissionGroupId = value;
	}
	
	public java.lang.Integer getPermissionGroupId() {
		return this.permissionGroupId;
	}
	public void setPermissionId(java.lang.Integer value) {
		this.permissionId = value;
	}
	
	public java.lang.Integer getPermissionId() {
		return this.permissionId;
	}
	public void setGroupId(java.lang.Integer value) {
		this.groupId = value;
	}
	
	public java.lang.Integer getGroupId() {
		return this.groupId;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("PermissionGroupId",getPermissionGroupId())
			.append("PermissionId",getPermissionId())
			.append("GroupId",getGroupId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getPermissionGroupId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof PermissionGroup == false) return false;
		if(this == obj) return true;
		PermissionGroup other = (PermissionGroup)obj;
		return new EqualsBuilder()
			.append(getPermissionGroupId(),other.getPermissionGroupId())
			.isEquals();
	}
}

