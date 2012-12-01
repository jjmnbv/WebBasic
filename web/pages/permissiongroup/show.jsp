<%@page import="com.jckj.project.model.*" %>
<%@ page import="com.jckj.webbasic.model.PermissionGroup" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=PermissionGroup.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="permissiongroup"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/permissiongroup'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="permissionGroupId" name="permissionGroupId" value="${permissionGroup.permissionGroupId}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=PermissionGroup.ALIAS_PERMISSION_ID%></td>	
				<td><c:out value='${permissionGroup.permissionId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=PermissionGroup.ALIAS_GROUP_ID%></td>
				<td><c:out value='${permissionGroup.groupId}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>