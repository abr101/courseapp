class UserMailer < ApplicationMailer
	 def registration_confirmation(user) 
   @message = 'whatever you want to say here!'
   mail(:from => "arahmed101@gmail.com", :to => user.email, :subject => "Thank you for registration #{user.email.split("@")[0]}")
end
end
