
<%@ page import="com.jtechies.Driver" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'driver.label', default: 'Driver')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-driver" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-driver" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="contactNumber" title="${message(code: 'driver.contactNumber.label', default: 'Contact Number')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'driver.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="dateOfBirth" title="${message(code: 'driver.dateOfBirth.label', default: 'Date Of Birth')}" />
					
						<g:sortableColumn property="driverName" title="${message(code: 'driver.driverName.label', default: 'Driver Name')}" />
					
						<g:sortableColumn property="driverPhoto" title="${message(code: 'driver.driverPhoto.label', default: 'Driver Photo')}" />
					
						<g:sortableColumn property="emailId" title="${message(code: 'driver.emailId.label', default: 'Email Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${driverInstanceList}" status="i" var="driverInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${driverInstance.id}">${fieldValue(bean: driverInstance, field: "contactNumber")}</g:link></td>
					
						<td><g:formatDate date="${driverInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${driverInstance.dateOfBirth}" /></td>
					
						<td>${fieldValue(bean: driverInstance, field: "driverName")}</td>
					
						<td>
						<img  src="${createLink(controller:'Driver', action:'showImage', id:"${driverInstance.id}")}" width='100' alt="No logo" />
						</td>
					
						<td>${fieldValue(bean: driverInstance, field: "emailId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${driverInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
