/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.service;

import com.jckj.webbasic.dao.GroupUserDao;
import com.jckj.webbasic.model.GroupUser;
import com.jckj.webbasic.vo.query.GroupUserQuery;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javacommon.base.*;

import cn.org.rapid_framework.page.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */

@Service
@Transactional
public class GroupUserManager extends BaseManager<GroupUser,java.lang.Integer>{

	private GroupUserDao groupUserDao;
	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setGroupUserDao(GroupUserDao dao) {
		this.groupUserDao = dao;
	}
	public EntityDao getEntityDao() {
		return this.groupUserDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(GroupUserQuery query) {
		return groupUserDao.findPage(query);
	}
	
}
