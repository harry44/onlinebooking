package com.jtechies



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DropLocationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DropLocation.list(params), model:[dropLocationInstanceCount: DropLocation.count()]
    }

    def show(DropLocation dropLocationInstance) {
        respond dropLocationInstance
    }

    def create() {
        respond new DropLocation(params)
    }

    @Transactional
    def save(DropLocation dropLocationInstance) {
        if (dropLocationInstance == null) {
            notFound()
            return
        }

        if (dropLocationInstance.hasErrors()) {
            respond dropLocationInstance.errors, view:'create'
            return
        }

        dropLocationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dropLocation.label', default: 'DropLocation'), dropLocationInstance.id])
                redirect dropLocationInstance
            }
            '*' { respond dropLocationInstance, [status: CREATED] }
        }
    }

    def edit(DropLocation dropLocationInstance) {
        respond dropLocationInstance
    }

    @Transactional
    def update(DropLocation dropLocationInstance) {
        if (dropLocationInstance == null) {
            notFound()
            return
        }

        if (dropLocationInstance.hasErrors()) {
            respond dropLocationInstance.errors, view:'edit'
            return
        }

        dropLocationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DropLocation.label', default: 'DropLocation'), dropLocationInstance.id])
                redirect dropLocationInstance
            }
            '*'{ respond dropLocationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DropLocation dropLocationInstance) {

        if (dropLocationInstance == null) {
            notFound()
            return
        }

        dropLocationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DropLocation.label', default: 'DropLocation'), dropLocationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dropLocation.label', default: 'DropLocation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
