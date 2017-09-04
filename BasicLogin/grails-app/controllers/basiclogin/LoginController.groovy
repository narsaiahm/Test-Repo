package basiclogin

import org.codehaus.groovy.grails.commons.GrailsApplication

class LoginController {

	GrailsApplication grailsApplication

	def index(){
		redirect(action:'login', params:params)
	}
//this comment is added
	def authenticate(){

		def userName = "";
		def userId = params['userId'];
		def password = params['password'];



		try {
			if (userId == "" || password == "") {

				def errorMsg = "Please enter valid user id and password."
				errorMsg = errorMsg + "  <a href='$request.contextPath/login/login'> Login Again. </a> "
				render(status: 401, text: errorMsg)
			} else if(userId != 'ADMIN'){

				redirect(action: 'authFailed')
			}
		}catch (Exception e) {
			println "ERROR : "+e.getMessage()
			def errorMsg = "Unable to authenticate the user ($userId - $userName)."
			errorMsg = errorMsg + "  <a href='$request.contextPath/login/login'> Login Again. </a> "
			render(status: 503, text: errorMsg)
		}
	}
//login method
	def login(){
		render view:'login'
	}

	def showregistration() {
		render view:'registration'
	}

	def registration(){
		def firstName = params['firstname'];
		def lastName = params['lastname'];

		def regMsg ="Hello " + firstName + " " + lastName +" Successfully Registerd with us.<br> Thank You."
		regMsg = regMsg + " Go Back to Login Page - <a href='$request.contextPath/login/login'> Login Again. </a> "

		render(status: 401, text: regMsg)
	}
	
	def authFailed(){
		render view:'authFailed'
	}
}
