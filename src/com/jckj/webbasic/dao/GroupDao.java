/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.dao;

import com.jckj.webbasic.model.Group;
import com.jckj.webbasic.vo.query.GroupQuery;
import javacommon.base.*;

import cn.org.rapid_framework.page.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


import org.springframework.stereotype.Repository;


@Repository
public class GroupDao extends BaseIbatis3Dao<Group,java.lang.Integer>{
	
	@Override
	public String getIbatisMapperNamesapce() {
		return "Group";
	}
	
	public void saveOrUpdate(Group entity) {
		if(entity.getGroupId() == null) 
			save(entity);
		else 
			update(entity);
	}
	
	public Page findPage(GroupQuery query) {
		return pageQuery("Group.findPage",query);
	}
	

}
