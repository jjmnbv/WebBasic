<%@page import="com.jckj.project.model.*" %>
<%@ page import="com.jckj.webbasic.model.GroupUser" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="groupUserId" name="groupUserId" value="${groupUser.groupUserId}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=GroupUser.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=GroupUser.ALIAS_GROUP_ID%>:
		</td>		
		<td>
		<form:input path="groupId" id="groupId" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="groupId"/></font>
		</td>
	</tr>	
	
		