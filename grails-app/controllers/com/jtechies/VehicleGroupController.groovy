package com.jtechies



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VehicleGroupController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond VehicleGroup.list(params), model:[vehicleGroupInstanceCount: VehicleGroup.count()]
    }

    def show(VehicleGroup vehicleGroupInstance) {
        respond vehicleGroupInstance
    }

    def create() {
        respond new VehicleGroup(params)
    }

    @Transactional
    def save(VehicleGroup vehicleGroupInstance) {
        if (vehicleGroupInstance == null) {
            notFound()
            return
        }

        if (vehicleGroupInstance.hasErrors()) {
            respond vehicleGroupInstance.errors, view:'create'
            return
        }

        vehicleGroupInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vehicleGroup.label', default: 'VehicleGroup'), vehicleGroupInstance.id])
                redirect vehicleGroupInstance
            }
            '*' { respond vehicleGroupInstance, [status: CREATED] }
        }
    }

    def edit(VehicleGroup vehicleGroupInstance) {
        respond vehicleGroupInstance
    }

    @Transactional
    def update(VehicleGroup vehicleGroupInstance) {
        if (vehicleGroupInstance == null) {
            notFound()
            return
        }

        if (vehicleGroupInstance.hasErrors()) {
            respond vehicleGroupInstance.errors, view:'edit'
            return
        }

        vehicleGroupInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'VehicleGroup.label', default: 'VehicleGroup'), vehicleGroupInstance.id])
                redirect vehicleGroupInstance
            }
            '*'{ respond vehicleGroupInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(VehicleGroup vehicleGroupInstance) {

        if (vehicleGroupInstance == null) {
            notFound()
            return
        }

        vehicleGroupInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'VehicleGroup.label', default: 'VehicleGroup'), vehicleGroupInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vehicleGroup.label', default: 'VehicleGroup'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
