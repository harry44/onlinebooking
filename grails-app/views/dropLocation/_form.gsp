<%@ page import="com.jtechies.DropLocation" %>



<div class="fieldcontain ${hasErrors(bean: dropLocationInstance, field: 'locationName', 'error')} required">
	<label for="locationName">
		<g:message code="dropLocation.locationName.label" default="Location Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="locationName" required="" value="${dropLocationInstance?.locationName}"/>

</div>

