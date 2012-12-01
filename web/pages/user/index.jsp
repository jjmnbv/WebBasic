<%@page import="com.jckj.project.model.*" %>
<%@ page import="com.jckj.webbasic.model.User" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=User.TABLE_ALIAS%> 维护</title>
	
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
					<td class="tdLabel"><%=User.ALIAS_USER_NAME%></td>		
					<td>
						<input value="${query.userName}" id="userName" name="userName" maxlength="20"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_PASSWORD%></td>		
					<td>
						<input value="${query.password}" id="password" name="password" maxlength="20"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_FORBIDDEN_FLAG%></td>		
					<td>
						<input value="${query.forbiddenFlag}" id="forbiddenFlag" name="forbiddenFlag" maxlength="1"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_EMPLOYEE_ID%></td>		
					<td>
						<input value="${query.employeeId}" id="employeeId" name="employeeId" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=User.ALIAS_UPDATE_PWD_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.updatePwdTimeBegin}' pattern='<%=User.FORMAT_UPDATE_PWD_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=User.FORMAT_UPDATE_PWD_TIME%>'})" id="updatePwdTimeBegin" name="updatePwdTimeBegin"   />
						<input value="<fmt:formatDate value='${query.updatePwdTimeEnd}' pattern='<%=User.FORMAT_UPDATE_PWD_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=User.FORMAT_UPDATE_PWD_TIME%>'})" id="updatePwdTimeEnd" name="updatePwdTimeEnd"   />
					</td>
					<td class="tdLabel"><%=User.ALIAS_UPDATE_USER_ID%></td>		
					<td>
						<input value="${query.updateUserId}" id="updateUserId" name="updateUserId" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/user'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/user/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/user','items',document.forms.queryForm)"/>
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
				<th sortColumn="USER_NAME" ><%=User.ALIAS_USER_NAME%></th>
				<th sortColumn="PASSWORD" ><%=User.ALIAS_PASSWORD%></th>
				<th sortColumn="FORBIDDEN_FLAG" ><%=User.ALIAS_FORBIDDEN_FLAG%></th>
				<th sortColumn="EMPLOYEE_ID" ><%=User.ALIAS_EMPLOYEE_ID%></th>
				<th sortColumn="UPDATE_PWD_TIME" ><%=User.ALIAS_UPDATE_PWD_TIME%></th>
				<th sortColumn="UPDATE_USER_ID" ><%=User.ALIAS_UPDATE_USER_ID%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.userId}"></td>
				
				<td><c:out value='${item.userName}'/>&nbsp;</td>
				<td><c:out value='${item.password}'/>&nbsp;</td>
				<td><c:out value='${item.forbiddenFlag}'/>&nbsp;</td>
				<td><c:out value='${item.employeeId}'/>&nbsp;</td>
				<td><c:out value='${item.updatePwdTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.updateUserId}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/user/${item.userId}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/user/${item.userId}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/user/${item.userId}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
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
