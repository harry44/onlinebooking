<%@ page import="com.jtechies.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyEmail', 'error')} required">
	<label for="companyEmail">
		<g:message code="company.companyEmail.label" default="Company Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="companyEmail" required="" value="${companyInstance?.companyEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'fb', 'error')} ">
	<label for="fb">
		<g:message code="company.fb.label" default="Fb" />
		
	</label>
	<g:field type="url" name="fb" value="${companyInstance?.fb}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'twitter', 'error')} ">
	<label for="twitter">
		<g:message code="company.twitter.label" default="Twitter" />
		
	</label>
	<g:field type="url" name="twitter" value="${companyInstance?.twitter}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'google', 'error')} ">
	<label for="google">
		<g:message code="company.google.label" default="Google" />
		
	</label>
	<g:field type="url" name="google" value="${companyInstance?.google}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyPhone2', 'error')} ">
	<label for="companyPhone2">
		<g:message code="company.companyPhone2.label" default="Company Phone2" />
		
	</label>
	<g:textField name="companyPhone2" value="${companyInstance?.companyPhone2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyWebsite', 'error')} ">
	<label for="companyWebsite">
		<g:message code="company.companyWebsite.label" default="Company Website" />
		
	</label>
	<g:textField name="companyWebsite" value="${companyInstance?.companyWebsite}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyFooter', 'error')} required">
	<label for="companyFooter">
		<g:message code="company.companyFooter.label" default="Company Footer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyFooter" required="" value="${companyInstance?.companyFooter}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyHeader', 'error')} required">
	<label for="companyHeader">
		<g:message code="company.companyHeader.label" default="Company Header" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyHeader" required="" value="${companyInstance?.companyHeader}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyInfo', 'error')} required">
	<label for="companyInfo">
		<g:message code="company.companyInfo.label" default="Company Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyInfo" required="" value="${companyInstance?.companyInfo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyLogo', 'error')} required">
	<label for="companyLogo">
		<g:message code="company.companyLogo.label" default="Company Logo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="companyLogo" name="companyLogo" />

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyName', 'error')} required">
	<label for="companyName">
		<g:message code="company.companyName.label" default="Company Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyName" required="" value="${companyInstance?.companyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyPhone1', 'error')} required">
	<label for="companyPhone1">
		<g:message code="company.companyPhone1.label" default="Company Phone1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyPhone1" required="" value="${companyInstance?.companyPhone1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'headerBanner', 'error')} required">
	<label for="headerBanner">
		<g:message code="company.headerBanner.label" default="Header Banner" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="headerBanner" name="headerBanner" />

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="company.location.label" default="Location" />
		
	</label>
	

</div>

