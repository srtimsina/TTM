package ttm

import TTM.Person
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class PersonController {

    def mailService

    def index() {

    }

    def register(){
        println params
        def person = new Person(params)
        if(person.save()){

            mailService.sendMail {
                to params.email
                subject "User Created"
                body "Hello " +params.firstName+ ",\nYour user credential has been created.\nusername :- "+params.userName+"\npassword :-"+params.password+"\nKind Regards"
            }
            redirect(controller: 'login' ,action:'auth')
        }
    }
}
