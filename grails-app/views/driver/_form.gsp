<%@ page import="com.jtechies.Driver" %>

<g:countrySelect/>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'contactNumber', 'error')} required">
	<label for="contactNumber">
		<g:message code="driver.contactNumber.label" default="Contact Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactNumber" required="" value="${driverInstance?.contactNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="driver.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${driverInstance?.dateOfBirth}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'driverName', 'error')} required">
	<label for="driverName">
		<g:message code="driver.driverName.label" default="Driver Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="driverName" required="" value="${driverInstance?.driverName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'driverPhoto', 'error')} required">
	<label for="driverPhoto">
		<g:message code="driver.driverPhoto.label" default="Driver Photo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="driverPhoto" name="driverPhoto" />

</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'emailId', 'error')} required">
	<label for="emailId">
		<g:message code="driver.emailId.label" default="Email Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="emailId" required="" value="${driverInstance?.emailId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'licenceId', 'error')} required">
	<label for="licenceId">
		<g:message code="driver.licenceId.label" default="Licence Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="licenceId" required="" value="${driverInstance?.licenceId}"/>

</div>

