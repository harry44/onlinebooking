package com.jtechies



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DriverController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Driver.list(params), model:[driverInstanceCount: Driver.count()]
    }

    def show(Driver driverInstance) {
        respond driverInstance
    }

    def create() {
        respond new Driver(params)
    }

    @Transactional
    def save(Driver driverInstance) {
        if (driverInstance == null) {
            notFound()
            return
        }

        if (driverInstance.hasErrors()) {
            respond driverInstance.errors, view:'create'
            return
        }

        driverInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'driver.label', default: 'Driver'), driverInstance.id])
                redirect driverInstance
            }
            '*' { respond driverInstance, [status: CREATED] }
        }
    }

    def edit(Driver driverInstance) {
        respond driverInstance
    }

    @Transactional
    def update(Driver driverInstance) {
        if (driverInstance == null) {
            notFound()
            return
        }

        if (driverInstance.hasErrors()) {
            respond driverInstance.errors, view:'edit'
            return
        }

        driverInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Driver.label', default: 'Driver'), driverInstance.id])
                redirect driverInstance
            }
            '*'{ respond driverInstance, [status: OK] }
        }
    }

	def showImage(){
		def driver=Driver.get(params.id)
		response.outputStream<<driver.driverPhoto
		response.outputStream.flush() 
	}
	
    @Transactional
    def delete(Driver driverInstance) {

        if (driverInstance == null) {
            notFound()
            return
        }

        driverInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Driver.label', default: 'Driver'), driverInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
