<%@ page import="com.jtechies.Vehicle" %>



<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'plateNumber', 'error')} required">
	<label for="plateNumber">
		<g:message code="vehicle.plateNumber.label" default="Plate Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="plateNumber" required="" value="${vehicleInstance?.plateNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'vehicleGroup', 'error')} required">
	<label for="vehicleGroup">
		<g:message code="vehicle.vehicleGroup.label" default="Vehicle Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="vehicleGroup" name="vehicleGroup.id" from="${com.jtechies.VehicleGroup.list()}" optionKey="id" required="" value="${vehicleInstance?.vehicleGroup?.id}" class="many-to-one"/>

</div>

