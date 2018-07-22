class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

		"/" {
			controller = "searchController"
			action = "/$controller/$action"
		 }
        "/"(view:"/index")
		"/index"(view:"/index")
		"/about"(view:"/about")
		"/contact"(view:"/contact")
		"/typography"(view:"/typography")
		"/gallery"(view:"/gallery")
		"/icons"(view:"/icons")
		
        "500"(view:'/error')
	}
}
