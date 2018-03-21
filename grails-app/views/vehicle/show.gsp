
<%@ page import="com.jtechies.Vehicle" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vehicle.label', default: 'Vehicle')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vehicle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vehicle" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vehicle">
			
				<g:if test="${vehicleInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="vehicle.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${vehicleInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehicleInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="vehicle.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${vehicleInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehicleInstance?.plateNumber}">
				<li class="fieldcontain">
					<span id="plateNumber-label" class="property-label"><g:message code="vehicle.plateNumber.label" default="Plate Number" /></span>
					
						<span class="property-value" aria-labelledby="plateNumber-label"><g:fieldValue bean="${vehicleInstance}" field="plateNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehicleInstance?.vehicleGroup}">
				<li class="fieldcontain">
					<span id="vehicleGroup-label" class="property-label"><g:message code="vehicle.vehicleGroup.label" default="Vehicle Group" /></span>
					
						<span class="property-value" aria-labelledby="vehicleGroup-label"><g:link controller="vehicleGroup" action="show" id="${vehicleInstance?.vehicleGroup?.id}">${vehicleInstance?.vehicleGroup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vehicleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vehicleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
