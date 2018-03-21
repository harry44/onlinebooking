
<%@ page import="com.jtechies.Vehicle" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vehicle.label', default: 'Vehicle')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vehicle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vehicle" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'vehicle.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'vehicle.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="plateNumber" title="${message(code: 'vehicle.plateNumber.label', default: 'Plate Number')}" />
					
						<th><g:message code="vehicle.vehicleGroup.label" default="Vehicle Group" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vehicleInstanceList}" status="i" var="vehicleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vehicleInstance.id}">${fieldValue(bean: vehicleInstance, field: "dateCreated")}</g:link></td>
					
						<td><g:formatDate date="${vehicleInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: vehicleInstance, field: "plateNumber")}</td>
					
						<td>${fieldValue(bean: vehicleInstance, field: "vehicleGroup")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vehicleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
