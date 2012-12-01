<%@page import="com.jckj.project.model.*" %>
<%@ page import="com.jckj.webbasic.model.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Employee.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="employee"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/employee'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="employeeId" name="employeeId" value="${employee.employeeId}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Employee.ALIAS_ORGANIZATION_ID%></td>	
				<td><c:out value='${employee.organizationId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Employee.ALIAS_EMPLOYEE_NAME%></td>	
				<td><c:out value='${employee.employeeName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Employee.ALIAS_ADDRESS%></td>	
				<td><c:out value='${employee.address}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Employee.ALIAS_TELEPHONE%></td>	
				<td><c:out value='${employee.telephone}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Employee.ALIAS_EMAIL%></td>	
				<td><c:out value='${employee.email}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Employee.ALIAS_UPDATE_USER_ID%></td>	
				<td><c:out value='${employee.updateUserId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Employee.ALIAS_UPDATE_TIME%></td>
				<td><c:out value='${employee.updateTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>