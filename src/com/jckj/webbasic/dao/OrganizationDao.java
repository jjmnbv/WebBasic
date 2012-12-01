/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.dao;

import com.jckj.webbasic.model.Organization;
import com.jckj.webbasic.vo.query.OrganizationQuery;
import javacommon.base.*;

import cn.org.rapid_framework.page.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


import org.springframework.stereotype.Repository;


@Repository
public class OrganizationDao extends BaseIbatis3Dao<Organization,java.lang.Integer>{
	
	@Override
	public String getIbatisMapperNamesapce() {
		return "Organization";
	}
	
	public void saveOrUpdate(Organization entity) {
		if(entity.getOrganizationId() == null) 
			save(entity);
		else 
			update(entity);
	}
	
	public Page findPage(OrganizationQuery query) {
		return pageQuery("Organization.findPage",query);
	}
	

}
