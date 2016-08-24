package ttm

import TTM.DesktopIssues
import TTM.Person
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.commons.CommonsMultipartFile

@Secured('permitAll')
class DesktopIssuesController {

    def mailService

    def index() {
        def personList = Person.findAll()

        [personList:personList]
    }

    def save(){
        CommonsMultipartFile myFile = request.getFile('files')
        final String file = myFile.getOriginalFilename()
        params.files = file

        def fos = new FileOutputStream(new File('upload/'+ file))

        myFile.getBytes().each {
            fos.write(it)
        }

        fos.flush()
        fos.close()

        def desktopInstance = new DesktopIssues(params)

        if(desktopInstance.save(flush: true)){

            mailService.sendMail {
                to params.assignee,params.watchers
                subject params.subject
                body params.description
            }
            redirect(action: 'show')
        }

    }

    def show(){

        def desktopList = DesktopIssues.findAll()

        [desktopList:desktopList]
    }

}
