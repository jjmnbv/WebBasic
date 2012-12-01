<%@page import="com.jckj.project.model.*" %>
<%@ page import="com.jckj.webbasic.model.Organization" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="organizationId" name="organizationId" value="${organization.organizationId}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Organization.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="required " maxlength="120" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Organization.ALIAS_CODE%>:
		</td>		
		<td>
		<form:input path="code" id="code" cssClass="required " maxlength="12" />
		<font color='red'><form:errors path="code"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Organization.ALIAS_SUPER_ORGANIZATION_ID%>:
		</td>		
		<td>
		<form:input path="superOrganizationId" id="superOrganizationId" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="superOrganizationId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Organization.ALIAS_AREA_CODE%>:
		</td>		
		<td>
		<form:input path="areaCode" id="areaCode" cssClass="" maxlength="12" />
		<font color='red'><form:errors path="areaCode"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Organization.ALIAS_REMARK%>:
		</td>		
		<td>
		<form:input path="remark" id="remark" cssClass="" maxlength="100" />
		<font color='red'><form:errors path="remark"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Organization.ALIAS_UPDATE_TIME%>:
		</td>		
		<td>
		<input value="${organization.updateTimeString}" onclick="WdatePicker({dateFmt:'<%=Organization.FORMAT_UPDATE_TIME%>'})" id="updateTimeString" name="updateTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="updateTime"/></font>
		</td>
	</tr>	
	
		