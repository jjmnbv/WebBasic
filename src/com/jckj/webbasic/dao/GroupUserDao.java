/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.dao;

import com.jckj.webbasic.model.GroupUser;
import com.jckj.webbasic.vo.query.GroupUserQuery;
import javacommon.base.*;

import cn.org.rapid_framework.page.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


import org.springframework.stereotype.Repository;


@Repository
public class GroupUserDao extends BaseIbatis3Dao<GroupUser,java.lang.Integer>{
	
	@Override
	public String getIbatisMapperNamesapce() {
		return "GroupUser";
	}
	
	public void saveOrUpdate(GroupUser entity) {
		if(entity.getGroupUserId() == null) 
			save(entity);
		else 
			update(entity);
	}
	
	public Page findPage(GroupUserQuery query) {
		return pageQuery("GroupUser.findPage",query);
	}
	

}
