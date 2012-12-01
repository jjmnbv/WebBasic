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


public class Employee extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Employee";
	public static final String ALIAS_EMPLOYEE_ID = "员工表ID";
	public static final String ALIAS_ORGANIZATION_ID = "机构ID";
	public static final String ALIAS_EMPLOYEE_NAME = "员工姓名";
	public static final String ALIAS_ADDRESS = "联系地址";
	public static final String ALIAS_TELEPHONE = "联系电话";
	public static final String ALIAS_EMAIL = "电子邮箱";
	public static final String ALIAS_UPDATE_USER_ID = "更新人";
	public static final String ALIAS_UPDATE_TIME = "更新时间";
	
	//date formats
	public static final String FORMAT_UPDATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
    /**
     * 员工表ID       db_column: EMPLOYEE_ID 
     */	
	
	private java.lang.Integer employeeId;
    /**
     * 机构ID       db_column: ORGANIZATION_ID 
     */	
	
	private java.lang.Integer organizationId;
    /**
     * 员工姓名       db_column: EMPLOYEE_NAME 
     */	
	@NotBlank @Length(max=40)
	private java.lang.String employeeName;
    /**
     * 联系地址       db_column: ADDRESS 
     */	
	@Length(max=200)
	private java.lang.String address;
    /**
     * 联系电话       db_column: TELEPHONE 
     */	
	@Length(max=30)
	private java.lang.String telephone;
    /**
     * 电子邮箱       db_column: EMAIL 
     */	
	@Length(max=40)
	private java.lang.String email;
    /**
     * 更新人       db_column: UPDATE_USER_ID 
     */	
	@NotNull 
	private java.lang.Integer updateUserId;
    /**
     * 更新时间       db_column: UPDATE_TIME 
     */	
	@NotNull 
	private java.util.Date updateTime;
	//columns END

	public Employee(){
	}

	public Employee(
		java.lang.Integer employeeId
	){
		this.employeeId = employeeId;
	}

	public void setEmployeeId(java.lang.Integer value) {
		this.employeeId = value;
	}
	
	public java.lang.Integer getEmployeeId() {
		return this.employeeId;
	}
	public void setOrganizationId(java.lang.Integer value) {
		this.organizationId = value;
	}
	
	public java.lang.Integer getOrganizationId() {
		return this.organizationId;
	}
	public void setEmployeeName(java.lang.String value) {
		this.employeeName = value;
	}
	
	public java.lang.String getEmployeeName() {
		return this.employeeName;
	}
	public void setAddress(java.lang.String value) {
		this.address = value;
	}
	
	public java.lang.String getAddress() {
		return this.address;
	}
	public void setTelephone(java.lang.String value) {
		this.telephone = value;
	}
	
	public java.lang.String getTelephone() {
		return this.telephone;
	}
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	public java.lang.String getEmail() {
		return this.email;
	}
	public void setUpdateUserId(java.lang.Integer value) {
		this.updateUserId = value;
	}
	
	public java.lang.Integer getUpdateUserId() {
		return this.updateUserId;
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
			.append("EmployeeId",getEmployeeId())
			.append("OrganizationId",getOrganizationId())
			.append("EmployeeName",getEmployeeName())
			.append("Address",getAddress())
			.append("Telephone",getTelephone())
			.append("Email",getEmail())
			.append("UpdateUserId",getUpdateUserId())
			.append("UpdateTime",getUpdateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getEmployeeId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Employee == false) return false;
		if(this == obj) return true;
		Employee other = (Employee)obj;
		return new EqualsBuilder()
			.append(getEmployeeId(),other.getEmployeeId())
			.isEquals();
	}
}

