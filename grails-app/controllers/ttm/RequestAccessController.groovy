package ttm

import TTM.Person
import TTM.RequestAccessModel
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.commons.CommonsMultipartFile

@Secured('permitAll')
class RequestAccessController {

    def mailService

    def index() {

        def issueList = RequestAccessModel.list();

        [issueList:issueList]

    }

    def issues(){
        redirect(action: 'index')
    }

    def newIssue(){
        def personList = Person.findAll()

        [personList:personList]
    }

    def save(){

        CommonsMultipartFile myFile = request.getFile('files')

        final String file = myFile.getOriginalFilename()

        params.files = file

        def fos = new FileOutputStream(new File('upload/'+file))

        myFile.getBytes().each {
            fos.write(it)
        }

        fos.flush()
        fos.close()

        def issueInstance = new RequestAccessModel(params)

        if(issueInstance.save(flush: true)){

            mailService.sendMail {
                to params.assignee,params.watchers
                subject params.subject
                body params.description
            }
            redirect(action: 'index')
        }

    }
    }
