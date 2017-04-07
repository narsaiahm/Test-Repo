class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/index.gsp"(controller: 'login')
		"/"(controller: 'login')
	
		"500"(view:'/error')
	}
	
	
	
}
