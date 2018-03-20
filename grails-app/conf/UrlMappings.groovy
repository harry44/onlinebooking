class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
		"/index"(view:"/index")
		"/about"(view:"/about")
		"/contact"(view:"/contact")
		"/typography"(view:"/typography")
		"/gallery"(view:"/gallery")
		"/booking"(view:"/booking")
		"/icons"(view:"/icons")
		
        "500"(view:'/error')
	}
}
