<%@page import="com.jckj.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="employeeId" name="employeeId" value="${employee.employeeId}"/>

	<tr>	
		<td class="tdLabel">
			<%=Employee.ALIAS_ORGANIZATION_ID%>:
		</td>		
		<td>
		<form:input path="organizationId" id="organizationId" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="organizationId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Employee.ALIAS_EMPLOYEE_NAME%>:
		</td>		
		<td>
		<form:input path="employeeName" id="employeeName" cssClass="required " maxlength="40" />
		<font color='red'><form:errors path="employeeName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Employee.ALIAS_ADDRESS%>:
		</td>		
		<td>
		<form:input path="address" id="address" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="address"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Employee.ALIAS_TELEPHONE%>:
		</td>		
		<td>
		<form:input path="telephone" id="telephone" cssClass="" maxlength="30" />
		<font color='red'><form:errors path="telephone"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Employee.ALIAS_EMAIL%>:
		</td>		
		<td>
		<form:input path="email" id="email" cssClass="" maxlength="40" />
		<font color='red'><form:errors path="email"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Employee.ALIAS_UPDATE_USER_ID%>:
		</td>		
		<td>
		<form:input path="updateUserId" id="updateUserId" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="updateUserId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Employee.ALIAS_UPDATE_TIME%>:
		</td>		
		<td>
		<input value="${employee.updateTimeString}" onclick="WdatePicker({dateFmt:'<%=Employee.FORMAT_UPDATE_TIME%>'})" id="updateTimeString" name="updateTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="updateTime"/></font>
		</td>
	</tr>	
	
		