<%@page import="com.jckj.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="groupId" name="groupId" value="${group.groupId}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Group.ALIAS_GROUP_NAME%>:
		</td>		
		<td>
		<form:input path="groupName" id="groupName" cssClass="required " maxlength="20" />
		<font color='red'><form:errors path="groupName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Group.ALIAS_SPECIFICATION%>:
		</td>		
		<td>
		<form:input path="specification" id="specification" cssClass="" maxlength="40" />
		<font color='red'><form:errors path="specification"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Group.ALIAS_UPDATE_TIME%>:
		</td>		
		<td>
		<input value="${group.updateTimeString}" onclick="WdatePicker({dateFmt:'<%=Group.FORMAT_UPDATE_TIME%>'})" id="updateTimeString" name="updateTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="updateTime"/></font>
		</td>
	</tr>	
	
		