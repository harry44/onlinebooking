<%@ page import="com.jtechies.Location" %>



<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'cityName', 'error')} required">
	<label for="cityName">
		<g:message code="location.cityName.label" default="City Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cityName" required="" value="${locationInstance?.cityName}"/>

</div>

