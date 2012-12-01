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


public class Organization extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Organization";
	public static final String ALIAS_ORGANIZATION_ID = "机构ID";
	public static final String ALIAS_NAME = "机构名称";
	public static final String ALIAS_CODE = "机构编码";
	public static final String ALIAS_SUPER_ORGANIZATION_ID = "上级机构ID";
	public static final String ALIAS_AREA_CODE = "地区编码";
	public static final String ALIAS_REMARK = "备注";
	public static final String ALIAS_UPDATE_TIME = "更新时间";
	
	//date formats
	public static final String FORMAT_UPDATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
    /**
     * 机构ID       db_column: ORGANIZATION_ID 
     */	
	
	private java.lang.Integer organizationId;
    /**
     * 机构名称       db_column: NAME 
     */	
	@NotBlank @Length(max=120)
	private java.lang.String name;
    /**
     * 机构编码       db_column: CODE 
     */	
	@NotBlank @Length(max=12)
	private java.lang.String code;
    /**
     * 上级机构ID       db_column: SUPER_ORGANIZATION_ID 
     */	
	
	private java.lang.Integer superOrganizationId;
    /**
     * 地区编码       db_column: AREA_CODE 
     */	
	@Length(max=12)
	private java.lang.String areaCode;
    /**
     * 备注       db_column: REMARK 
     */	
	@Length(max=100)
	private java.lang.String remark;
    /**
     * 更新时间       db_column: UPDATE_TIME 
     */	
	@NotNull 
	private java.util.Date updateTime;
	//columns END

	public Organization(){
	}

	public Organization(
		java.lang.Integer organizationId
	){
		this.organizationId = organizationId;
	}

	public void setOrganizationId(java.lang.Integer value) {
		this.organizationId = value;
	}
	
	public java.lang.Integer getOrganizationId() {
		return this.organizationId;
	}
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setCode(java.lang.String value) {
		this.code = value;
	}
	
	public java.lang.String getCode() {
		return this.code;
	}
	public void setSuperOrganizationId(java.lang.Integer value) {
		this.superOrganizationId = value;
	}
	
	public java.lang.Integer getSuperOrganizationId() {
		return this.superOrganizationId;
	}
	public void setAreaCode(java.lang.String value) {
		this.areaCode = value;
	}
	
	public java.lang.String getAreaCode() {
		return this.areaCode;
	}
	public void setRemark(java.lang.String value) {
		this.remark = value;
	}
	
	public java.lang.String getRemark() {
		return this.remark;
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
			.append("OrganizationId",getOrganizationId())
			.append("Name",getName())
			.append("Code",getCode())
			.append("SuperOrganizationId",getSuperOrganizationId())
			.append("AreaCode",getAreaCode())
			.append("Remark",getRemark())
			.append("UpdateTime",getUpdateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getOrganizationId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Organization == false) return false;
		if(this == obj) return true;
		Organization other = (Organization)obj;
		return new EqualsBuilder()
			.append(getOrganizationId(),other.getOrganizationId())
			.isEquals();
	}
}

