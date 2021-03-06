# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  after_action :login_email, only:[:create]
  def index
    
  end
  # GET /resource/sign_in
  #  def new
  #   super
  
  # end

  # POST /resource/sign_in
  def create
    super
      def is_signed_in?
   if !user_signed_in?
      redirect_to new_user_session_path
   else 
    end
   end
  end
  def login_email
         UserMailer.login_confirmation(resource.email).deliver
  end


   

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
