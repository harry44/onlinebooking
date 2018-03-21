
<%@ page import="com.jtechies.DropLocation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dropLocation.label', default: 'DropLocation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-dropLocation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-dropLocation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'dropLocation.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'dropLocation.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="locationName" title="${message(code: 'dropLocation.locationName.label', default: 'Location Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dropLocationInstanceList}" status="i" var="dropLocationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dropLocationInstance.id}">${fieldValue(bean: dropLocationInstance, field: "dateCreated")}</g:link></td>
					
						<td><g:formatDate date="${dropLocationInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: dropLocationInstance, field: "locationName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dropLocationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
