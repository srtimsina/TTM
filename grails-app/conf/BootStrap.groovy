import TTM.Role
import TTM.User
import TTM.UserRole

class BootStrap {

    def init = { servletContext ->

        def admin = User.findByUsername('admin')?:new User(username:'admin',password:'admin').save(flush: true)

        def adminRole = Role.findByAuthority('ROLE_ADMIN')?:new Role(authority:'ROLE_ADMIN').save(flush: true)

        UserRole.create(admin,adminRole,true)

    }
    def destroy = {
    }
}
