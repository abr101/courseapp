class UserMailer < ApplicationMailer
	def registration_confirmation(email) 
		@message = 'whatever you want to say here!'
		mail(:to => email, :subject => "Thank you for registration")
	end
	def login_confirmation(email) 
		@message = 'please check if You Not perform This activty Change Your Password.Otherwise Ignore it!'
		mail(:to => email, :subject => "New device login To your Account")
	end
end
