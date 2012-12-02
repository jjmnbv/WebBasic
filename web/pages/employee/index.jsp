<%@page import="com.jckj.project.model.*" %>
<%@ page import="com.jckj.webbasic.model.Employee" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Employee.TABLE_ALIAS%> 维护11</title>
	
	<script src="${ctx}/scripts/rest.js" ></script>
	<link href="<c:url value="/widgets/simpletable/simpletable.css"/>" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/widgets/simpletable/simpletable.js"/>"></script>
	
	<script type="text/javascript" >
		$(document).ready(function() {
			// 分页需要依赖的初始化动作
			window.simpleTable = new SimpleTable('queryForm',${page.thisPageNumber},${page.pageSize},'${pageRequest.sortColumns}');
		});
	</script>
</rapid:override>

<rapid:override name="content">
	<form id="queryForm" name="queryForm" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=Employee.ALIAS_ORGANIZATION_ID%></td>		
					<td>
						<input value="${query.organizationId}" id="organizationId" name="organizationId" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Employee.ALIAS_EMPLOYEE_NAME%></td>		
					<td>
						<input value="${query.employeeName}" id="employeeName" name="employeeName" maxlength="40"  class=""/>
					</td>
					<td class="tdLabel"><%=Employee.ALIAS_ADDRESS%></td>		
					<td>
						<input value="${query.address}" id="address" name="address" maxlength="200"  class=""/>
					</td>
					<td class="tdLabel"><%=Employee.ALIAS_TELEPHONE%></td>		
					<td>
						<input value="${query.telephone}" id="telephone" name="telephone" maxlength="30"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Employee.ALIAS_EMAIL%></td>		
					<td>
						<input value="${query.email}" id="email" name="email" maxlength="40"  class=""/>
					</td>
					<td class="tdLabel"><%=Employee.ALIAS_UPDATE_USER_ID%></td>		
					<td>
						<input value="${query.updateUserId}" id="updateUserId" name="updateUserId" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Employee.ALIAS_UPDATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.updateTimeBegin}' pattern='<%=Employee.FORMAT_UPDATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Employee.FORMAT_UPDATE_TIME%>'})" id="updateTimeBegin" name="updateTimeBegin"   />
						<input value="<fmt:formatDate value='${query.updateTimeEnd}' pattern='<%=Employee.FORMAT_UPDATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Employee.FORMAT_UPDATE_TIME%>'})" id="updateTimeEnd" name="updateTimeEnd"   />
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/employee'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/employee/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/employee','items',document.forms.queryForm)"/>
		<div>
	
	</div>
	
	<div class="gridTable">
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
	
		<table width="100%"  border="0" cellspacing="0" class="gridBody">
		  <thead>
			  
			  <tr>
				<th style="width:1px;"> </th>
				<th style="width:1px;"><input type="checkbox" onclick="setAllCheckboxState('items',this.checked)"></th>
				
				<!-- 排序时为th增加sortColumn即可,new SimpleTable('sortColumns')会为tableHeader自动增加排序功能; -->
				<th sortColumn="ORGANIZATION_ID" ><%=Employee.ALIAS_ORGANIZATION_ID%></th>
				<th sortColumn="EMPLOYEE_NAME" ><%=Employee.ALIAS_EMPLOYEE_NAME%></th>
				<th sortColumn="ADDRESS" ><%=Employee.ALIAS_ADDRESS%></th>
				<th sortColumn="TELEPHONE" ><%=Employee.ALIAS_TELEPHONE%></th>
				<th sortColumn="EMAIL" ><%=Employee.ALIAS_EMAIL%></th>
				<th sortColumn="UPDATE_USER_ID" ><%=Employee.ALIAS_UPDATE_USER_ID%></th>
				<th sortColumn="UPDATE_TIME" ><%=Employee.ALIAS_UPDATE_TIME%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.employeeId}"></td>
				
				<td><c:out value='${item.organizationId}'/>&nbsp;</td>
				<td><c:out value='${item.employeeName}'/>&nbsp;</td>
				<td><c:out value='${item.address}'/>&nbsp;</td>
				<td><c:out value='${item.telephone}'/>&nbsp;</td>
				<td><c:out value='${item.email}'/>&nbsp;</td>
				<td><c:out value='${item.updateUserId}'/>&nbsp;</td>
				<td><c:out value='${item.updateTimeString}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/employee/${item.employeeId}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/employee/${item.employeeId}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/employee/${item.employeeId}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
				</td>
			  </tr>
			  
		  	  </c:forEach>
		  </tbody>
		</table>
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
		
	</div>
	</form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>
