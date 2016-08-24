class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/index")      //for redirecting to index of home
        "/"(controller: 'home',action: 'index')
        "500"(view:'/error')
	}
}
