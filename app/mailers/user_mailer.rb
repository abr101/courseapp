class UserMailer < ApplicationMailer
	def registration_confirmation(email) 
		@message = 'whatever you want to say here!'
		mail(:to => email, :subject => "Thank you for registration")
	end
end
