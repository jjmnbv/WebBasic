<%@page import="com.jckj.project.model.*" %>
<%@ page import="com.jckj.webbasic.model.Organization" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Organization.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="organization"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/organization'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="organizationId" name="organizationId" value="${organization.organizationId}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Organization.ALIAS_NAME%></td>	
				<td><c:out value='${organization.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Organization.ALIAS_CODE%></td>	
				<td><c:out value='${organization.code}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Organization.ALIAS_SUPER_ORGANIZATION_ID%></td>	
				<td><c:out value='${organization.superOrganizationId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Organization.ALIAS_AREA_CODE%></td>	
				<td><c:out value='${organization.areaCode}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Organization.ALIAS_REMARK%></td>	
				<td><c:out value='${organization.remark}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Organization.ALIAS_UPDATE_TIME%></td>
				<td><c:out value='${organization.updateTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>