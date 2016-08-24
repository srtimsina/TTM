package ttm

import TTM.RevokeAccess
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.commons.CommonsMultipartFile

@Secured('permitAll')
class RevokeAccessController {

    def mailService

    def index() {

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

        def revokeInstance = new RevokeAccess(params)

        if(revokeInstance.save(flush: true)){

            mailService.sendMail {
                to params.assignee,params.watchers
                subject params.subject
                body params.description
            }
            redirect(action: 'show')
        }
    }
    def show(){

        def revokeList = RevokeAccess.findAll()

        [desktopList:revokeList]
    }

}
