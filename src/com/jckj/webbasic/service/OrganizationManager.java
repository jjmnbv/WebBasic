/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2012
 */

package com.jckj.webbasic.service;

import com.jckj.webbasic.dao.OrganizationDao;
import com.jckj.webbasic.model.Organization;
import com.jckj.webbasic.vo.query.OrganizationQuery;
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
public class OrganizationManager extends BaseManager<Organization,java.lang.Integer>{

	private OrganizationDao organizationDao;
	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setOrganizationDao(OrganizationDao dao) {
		this.organizationDao = dao;
	}
	public EntityDao getEntityDao() {
		return this.organizationDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(OrganizationQuery query) {
		return organizationDao.findPage(query);
	}
	
}
