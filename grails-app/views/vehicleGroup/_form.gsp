<%@ page import="com.jtechies.VehicleGroup" %>



<div class="fieldcontain ${hasErrors(bean: vehicleGroupInstance, field: 'groupName', 'error')} required">
	<label for="groupName">
		<g:message code="vehicleGroup.groupName.label" default="Group Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groupName" required="" value="${vehicleGroupInstance?.groupName}"/>

</div>

