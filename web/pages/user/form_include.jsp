<%@page import="com.jckj.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="userId" name="userId" value="${user.userId}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_USER_NAME%>:
		</td>		
		<td>
		<form:input path="userName" id="userName" cssClass="required " maxlength="20" />
		<font color='red'><form:errors path="userName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_PASSWORD%>:
		</td>		
		<td>
		<form:input path="password" id="password" cssClass="required " maxlength="20" />
		<font color='red'><form:errors path="password"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_FORBIDDEN_FLAG%>:
		</td>		
		<td>
		<form:input path="forbiddenFlag" id="forbiddenFlag" cssClass="required " maxlength="1" />
		<font color='red'><form:errors path="forbiddenFlag"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_EMPLOYEE_ID%>:
		</td>		
		<td>
		<form:input path="employeeId" id="employeeId" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="employeeId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_UPDATE_PWD_TIME%>:
		</td>		
		<td>
		<input value="${user.updatePwdTimeString}" onclick="WdatePicker({dateFmt:'<%=User.FORMAT_UPDATE_PWD_TIME%>'})" id="updatePwdTimeString" name="updatePwdTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="updatePwdTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_UPDATE_USER_ID%>:
		</td>		
		<td>
		<form:input path="updateUserId" id="updateUserId" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="updateUserId"/></font>
		</td>
	</tr>	
	
		