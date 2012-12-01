<%@page import="com.jckj.project.model.*" %>
<%@ page import="com.jckj.webbasic.model.Organization" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Organization.TABLE_ALIAS%> 维护</title>
	
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
					<td class="tdLabel"><%=Organization.ALIAS_NAME%></td>		
					<td>
						<input value="${query.name}" id="name" name="name" maxlength="120"  class=""/>
					</td>
					<td class="tdLabel"><%=Organization.ALIAS_CODE%></td>		
					<td>
						<input value="${query.code}" id="code" name="code" maxlength="12"  class=""/>
					</td>
					<td class="tdLabel"><%=Organization.ALIAS_SUPER_ORGANIZATION_ID%></td>		
					<td>
						<input value="${query.superOrganizationId}" id="superOrganizationId" name="superOrganizationId" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Organization.ALIAS_AREA_CODE%></td>		
					<td>
						<input value="${query.areaCode}" id="areaCode" name="areaCode" maxlength="12"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Organization.ALIAS_REMARK%></td>		
					<td>
						<input value="${query.remark}" id="remark" name="remark" maxlength="100"  class=""/>
					</td>
					<td class="tdLabel"><%=Organization.ALIAS_UPDATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.updateTimeBegin}' pattern='<%=Organization.FORMAT_UPDATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Organization.FORMAT_UPDATE_TIME%>'})" id="updateTimeBegin" name="updateTimeBegin"   />
						<input value="<fmt:formatDate value='${query.updateTimeEnd}' pattern='<%=Organization.FORMAT_UPDATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Organization.FORMAT_UPDATE_TIME%>'})" id="updateTimeEnd" name="updateTimeEnd"   />
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/organization'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/organization/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/organization','items',document.forms.queryForm)"/>
		<div>
	
	</div>
	
	<div class="gridTable">
	
		<simpletable:pageToolbar page="${page}"/>
	
		<table width="100%"  border="0" cellspacing="0" class="gridBody">
		  <thead>
			  
			  <tr>
				<th style="width:1px;"> </th>
				<th style="width:1px;"><input type="checkbox" onclick="setAllCheckboxState('items',this.checked)"></th>
				
				<!-- 排序时为th增加sortColumn即可,new SimpleTable('sortColumns')会为tableHeader自动增加排序功能; -->
				<th sortColumn="NAME" ><%=Organization.ALIAS_NAME%></th>
				<th sortColumn="CODE" ><%=Organization.ALIAS_CODE%></th>
				<th sortColumn="SUPER_ORGANIZATION_ID" ><%=Organization.ALIAS_SUPER_ORGANIZATION_ID%></th>
				<th sortColumn="AREA_CODE" ><%=Organization.ALIAS_AREA_CODE%></th>
				<th sortColumn="REMARK" ><%=Organization.ALIAS_REMARK%></th>
				<th sortColumn="UPDATE_TIME" ><%=Organization.ALIAS_UPDATE_TIME%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.organizationId}"></td>
				
				<td><c:out value='${item.name}'/>&nbsp;</td>
				<td><c:out value='${item.code}'/>&nbsp;</td>
				<td><c:out value='${item.superOrganizationId}'/>&nbsp;</td>
				<td><c:out value='${item.areaCode}'/>&nbsp;</td>
				<td><c:out value='${item.remark}'/>&nbsp;</td>
				<td><c:out value='${item.updateTimeString}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/organization/${item.organizationId}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/organization/${item.organizationId}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/organization/${item.organizationId}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
				</td>
			  </tr>
			  
		  	  </c:forEach>
		  </tbody>
		</table>
	
		<simpletable:pageToolbar page="${page}"/>
		
	</div>
	</form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>
