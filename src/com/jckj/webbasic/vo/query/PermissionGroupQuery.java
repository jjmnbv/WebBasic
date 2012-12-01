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


public class PermissionGroupQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** 用户组权限表ID */
	private java.lang.Integer permissionGroupId;
	/** 权限ID */
	private java.lang.Integer permissionId;
	/** 角色ID */
	private java.lang.Integer groupId;

	public java.lang.Integer getPermissionGroupId() {
		return this.permissionGroupId;
	}
	
	public void setPermissionGroupId(java.lang.Integer value) {
		this.permissionGroupId = value;
	}
	
	public java.lang.Integer getPermissionId() {
		return this.permissionId;
	}
	
	public void setPermissionId(java.lang.Integer value) {
		this.permissionId = value;
	}
	
	public java.lang.Integer getGroupId() {
		return this.groupId;
	}
	
	public void setGroupId(java.lang.Integer value) {
		this.groupId = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

