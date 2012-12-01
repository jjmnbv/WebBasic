/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.dao;

import com.jckj.webbasic.model.PermissionGroup;
import com.jckj.webbasic.vo.query.PermissionGroupQuery;
import javacommon.base.*;

import cn.org.rapid_framework.page.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


import org.springframework.stereotype.Repository;


@Repository
public class PermissionGroupDao extends BaseIbatis3Dao<PermissionGroup,java.lang.Integer>{
	
	@Override
	public String getIbatisMapperNamesapce() {
		return "PermissionGroup";
	}
	
	public void saveOrUpdate(PermissionGroup entity) {
		if(entity.getPermissionGroupId() == null) 
			save(entity);
		else 
			update(entity);
	}
	
	public Page findPage(PermissionGroupQuery query) {
		return pageQuery("PermissionGroup.findPage",query);
	}
	

}
