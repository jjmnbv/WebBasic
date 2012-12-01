<%@page import="com.jckj.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="permissionGroupId" name="permissionGroupId" value="${permissionGroup.permissionGroupId}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=PermissionGroup.ALIAS_PERMISSION_ID%>:
		</td>		
		<td>
		<form:input path="permissionId" id="permissionId" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="permissionId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=PermissionGroup.ALIAS_GROUP_ID%>:
		</td>		
		<td>
		<form:input path="groupId" id="groupId" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="groupId"/></font>
		</td>
	</tr>	
	
		