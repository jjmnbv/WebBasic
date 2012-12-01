/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.dao;

import com.jckj.webbasic.model.User;
import com.jckj.webbasic.vo.query.UserQuery;
import javacommon.base.*;

import cn.org.rapid_framework.page.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


import org.springframework.stereotype.Repository;


@Repository
public class UserDao extends BaseIbatis3Dao<User,java.lang.Integer>{
	
	@Override
	public String getIbatisMapperNamesapce() {
		return "User";
	}
	
	public void saveOrUpdate(User entity) {
		if(entity.getUserId() == null) 
			save(entity);
		else 
			update(entity);
	}
	
	public Page findPage(UserQuery query) {
		return pageQuery("User.findPage",query);
	}
	

}
