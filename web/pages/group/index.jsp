<%@page import="com.jckj.project.model.*" %>
<%@ page import="com.jckj.webbasic.model.Group" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Group.TABLE_ALIAS%> 维护</title>
	
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
					<td class="tdLabel"><%=Group.ALIAS_GROUP_NAME%></td>		
					<td>
						<input value="${query.groupName}" id="groupName" name="groupName" maxlength="20"  class=""/>
					</td>
					<td class="tdLabel"><%=Group.ALIAS_SPECIFICATION%></td>		
					<td>
						<input value="${query.specification}" id="specification" name="specification" maxlength="40"  class=""/>
					</td>
					<td class="tdLabel"><%=Group.ALIAS_UPDATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.updateTimeBegin}' pattern='<%=Group.FORMAT_UPDATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Group.FORMAT_UPDATE_TIME%>'})" id="updateTimeBegin" name="updateTimeBegin"   />
						<input value="<fmt:formatDate value='${query.updateTimeEnd}' pattern='<%=Group.FORMAT_UPDATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Group.FORMAT_UPDATE_TIME%>'})" id="updateTimeEnd" name="updateTimeEnd"   />
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/group'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/group/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/group','items',document.forms.queryForm)"/>
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
				<th sortColumn="GROUP_NAME" ><%=Group.ALIAS_GROUP_NAME%></th>
				<th sortColumn="SPECIFICATION" ><%=Group.ALIAS_SPECIFICATION%></th>
				<th sortColumn="UPDATE_TIME" ><%=Group.ALIAS_UPDATE_TIME%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.groupId}"></td>
				
				<td><c:out value='${item.groupName}'/>&nbsp;</td>
				<td><c:out value='${item.specification}'/>&nbsp;</td>
				<td><c:out value='${item.updateTimeString}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/group/${item.groupId}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/group/${item.groupId}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/group/${item.groupId}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
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
