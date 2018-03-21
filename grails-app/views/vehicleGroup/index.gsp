
<%@ page import="com.jtechies.VehicleGroup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vehicleGroup.label', default: 'VehicleGroup')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vehicleGroup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vehicleGroup" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'vehicleGroup.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="groupName" title="${message(code: 'vehicleGroup.groupName.label', default: 'Group Name')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'vehicleGroup.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vehicleGroupInstanceList}" status="i" var="vehicleGroupInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vehicleGroupInstance.id}">${fieldValue(bean: vehicleGroupInstance, field: "dateCreated")}</g:link></td>
					
						<td>${fieldValue(bean: vehicleGroupInstance, field: "groupName")}</td>
					
						<td><g:formatDate date="${vehicleGroupInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vehicleGroupInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
