
<%@ page import="com.jtechies.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-company" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list company">
			
				<g:if test="${companyInstance?.companyEmail}">
				<li class="fieldcontain">
					<span id="companyEmail-label" class="property-label"><g:message code="company.companyEmail.label" default="Company Email" /></span>
					
						<span class="property-value" aria-labelledby="companyEmail-label"><g:fieldValue bean="${companyInstance}" field="companyEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.fb}">
				<li class="fieldcontain">
					<span id="fb-label" class="property-label"><g:message code="company.fb.label" default="Fb" /></span>
					
						<span class="property-value" aria-labelledby="fb-label"><g:fieldValue bean="${companyInstance}" field="fb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.twitter}">
				<li class="fieldcontain">
					<span id="twitter-label" class="property-label"><g:message code="company.twitter.label" default="Twitter" /></span>
					
						<span class="property-value" aria-labelledby="twitter-label"><g:fieldValue bean="${companyInstance}" field="twitter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.google}">
				<li class="fieldcontain">
					<span id="google-label" class="property-label"><g:message code="company.google.label" default="Google" /></span>
					
						<span class="property-value" aria-labelledby="google-label"><g:fieldValue bean="${companyInstance}" field="google"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.companyPhone2}">
				<li class="fieldcontain">
					<span id="companyPhone2-label" class="property-label"><g:message code="company.companyPhone2.label" default="Company Phone2" /></span>
					
						<span class="property-value" aria-labelledby="companyPhone2-label"><g:fieldValue bean="${companyInstance}" field="companyPhone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.companyWebsite}">
				<li class="fieldcontain">
					<span id="companyWebsite-label" class="property-label"><g:message code="company.companyWebsite.label" default="Company Website" /></span>
					
						<span class="property-value" aria-labelledby="companyWebsite-label"><g:fieldValue bean="${companyInstance}" field="companyWebsite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.companyFooter}">
				<li class="fieldcontain">
					<span id="companyFooter-label" class="property-label"><g:message code="company.companyFooter.label" default="Company Footer" /></span>
					
						<span class="property-value" aria-labelledby="companyFooter-label"><g:fieldValue bean="${companyInstance}" field="companyFooter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.companyHeader}">
				<li class="fieldcontain">
					<span id="companyHeader-label" class="property-label"><g:message code="company.companyHeader.label" default="Company Header" /></span>
					
						<span class="property-value" aria-labelledby="companyHeader-label"><g:fieldValue bean="${companyInstance}" field="companyHeader"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.companyInfo}">
				<li class="fieldcontain">
					<span id="companyInfo-label" class="property-label"><g:message code="company.companyInfo.label" default="Company Info" /></span>
					
						<span class="property-value" aria-labelledby="companyInfo-label"><g:fieldValue bean="${companyInstance}" field="companyInfo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.companyLogo}">
				<li class="fieldcontain">
					<span id="companyLogo-label" class="property-label"><g:message code="company.companyLogo.label" default="Company Logo" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.companyName}">
				<li class="fieldcontain">
					<span id="companyName-label" class="property-label"><g:message code="company.companyName.label" default="Company Name" /></span>
					
						<span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${companyInstance}" field="companyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.companyPhone1}">
				<li class="fieldcontain">
					<span id="companyPhone1-label" class="property-label"><g:message code="company.companyPhone1.label" default="Company Phone1" /></span>
					
						<span class="property-value" aria-labelledby="companyPhone1-label"><g:fieldValue bean="${companyInstance}" field="companyPhone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="company.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${companyInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.headerBanner}">
				<li class="fieldcontain">
					<span id="headerBanner-label" class="property-label"><g:message code="company.headerBanner.label" default="Header Banner" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="company.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${companyInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				
			
			</ol>
			<g:form url="[resource:companyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${companyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
