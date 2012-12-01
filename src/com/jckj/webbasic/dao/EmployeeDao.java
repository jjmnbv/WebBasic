/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.dao;

import com.jckj.webbasic.model.Employee;
import com.jckj.webbasic.vo.query.EmployeeQuery;
import javacommon.base.*;

import cn.org.rapid_framework.page.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


import org.springframework.stereotype.Repository;


@Repository
public class EmployeeDao extends BaseIbatis3Dao<Employee,java.lang.Integer>{
	
	@Override
	public String getIbatisMapperNamesapce() {
		return "Employee";
	}
	
	public void saveOrUpdate(Employee entity) {
		if(entity.getEmployeeId() == null) 
			save(entity);
		else 
			update(entity);
	}
	
	public Page findPage(EmployeeQuery query) {
		return pageQuery("Employee.findPage",query);
	}
	

}
