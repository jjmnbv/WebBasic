/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.service;

import com.jckj.webbasic.dao.GroupDao;
import com.jckj.webbasic.model.Group;
import com.jckj.webbasic.vo.query.GroupQuery;
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
public class GroupManager extends BaseManager<Group,java.lang.Integer>{

	private GroupDao groupDao;
	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setGroupDao(GroupDao dao) {
		this.groupDao = dao;
	}
	public EntityDao getEntityDao() {
		return this.groupDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(GroupQuery query) {
		return groupDao.findPage(query);
	}
	
}
