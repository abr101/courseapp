class UserMailer < ApplicationMailer
	default from: 'arahmed101@gmail.com'

	def welcome_email
    @user = params[:user]
    @url  = 'https://abr101.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
