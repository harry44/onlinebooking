
<%@ page import="com.jtechies.Driver" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'driver.label', default: 'Driver')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-driver" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-driver" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list driver">
			<g:if test="${driverInstance?.driverPhoto}">
				<li class="fieldcontain">
					<span id="driverPhoto-label" class="property-label"><g:message code="driver.driverPhoto.label" default="Driver Photo" /></span>
					<img  src="${createLink(controller:'Driver', action:'showImage', id:"${driverInstance.id}")}" width='100' alt="No logo" />
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.contactNumber}">
				<li class="fieldcontain">
					<span id="contactNumber-label" class="property-label"><g:message code="driver.contactNumber.label" default="Contact Number" /></span>
					
						<span class="property-value" aria-labelledby="contactNumber-label"><g:fieldValue bean="${driverInstance}" field="contactNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="driver.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${driverInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="driver.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${driverInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.driverName}">
				<li class="fieldcontain">
					<span id="driverName-label" class="property-label"><g:message code="driver.driverName.label" default="Driver Name" /></span>
					
						<span class="property-value" aria-labelledby="driverName-label"><g:fieldValue bean="${driverInstance}" field="driverName"/></span>
					
				</li>
				</g:if>
			
				
			
				<g:if test="${driverInstance?.emailId}">
				<li class="fieldcontain">
					<span id="emailId-label" class="property-label"><g:message code="driver.emailId.label" default="Email Id" /></span>
					
						<span class="property-value" aria-labelledby="emailId-label"><g:fieldValue bean="${driverInstance}" field="emailId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="driver.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${driverInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.licenceId}">
				<li class="fieldcontain">
					<span id="licenceId-label" class="property-label"><g:message code="driver.licenceId.label" default="Licence Id" /></span>
					
						<span class="property-value" aria-labelledby="licenceId-label"><g:fieldValue bean="${driverInstance}" field="licenceId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:driverInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${driverInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
