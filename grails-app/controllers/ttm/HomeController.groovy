package ttm

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class HomeController {

    def springSecurityService

    def index() {

        if (springSecurityService.isLoggedIn()){
            redirect(action: 'admin')
        }
        else {
            redirect(controller: 'login',action: 'auth')
        }
    }

    def admin(){

    }

    def register(){

    }
}
