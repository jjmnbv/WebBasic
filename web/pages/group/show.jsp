<%@page import="com.jckj.project.model.*" %>
<%@ page import="com.jckj.webbasic.model.Group" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Group.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="group"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/group'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="groupId" name="groupId" value="${group.groupId}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Group.ALIAS_GROUP_NAME%></td>	
				<td><c:out value='${group.groupName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Group.ALIAS_SPECIFICATION%></td>	
				<td><c:out value='${group.specification}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Group.ALIAS_UPDATE_TIME%></td>
				<td><c:out value='${group.updateTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>