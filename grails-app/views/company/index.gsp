
<%@ page import="com.jtechies.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-company" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table style="width:auto;">
			<thead>
					<tr>
					
						<g:sortableColumn property="companyName" title="${message(code: 'company.companyName.label', default: 'Company Name')}" />
					
						<g:sortableColumn property="companyEmail" title="${message(code: 'company.companyEmail.label', default: 'Company Email')}" />
					
						<g:sortableColumn property="companyLogo" title="${message(code: 'company.companyLogo.label', default: 'Company logo')}" />
					
						<g:sortableColumn property="companyHeader" title="${message(code: 'company.companyHeader.label', default: 'Company Header')}" />
					
						<g:sortableColumn property="companyPhone2" title="${message(code: 'company.companyPhone2.label', default: 'Company Phone1')}" />
					
						<g:sortableColumn property="companyWebsite" title="${message(code: 'company.companyWebsite.label', default: 'Company Website')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${companyInstanceList}" status="i" var="companyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${companyInstance.id}">${fieldValue(bean: companyInstance, field: "companyName")}</g:link></td>
					
						<td>${fieldValue(bean: companyInstance, field: "companyEmail")}</td>
					
						<td>
						<img  src="${createLink(controller:'Company', action:'showLogo', id:"${companyInstance.id}")}" style="width:100px;height:100px;" alt="No logo" />
						</td>
					
						<td>${fieldValue(bean: companyInstance, field: "companyHeader")}</td>
					
						<td>${fieldValue(bean: companyInstance, field: "companyPhone1")}</td>
					
						<td>${fieldValue(bean: companyInstance, field: "companyWebsite")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${companyInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
