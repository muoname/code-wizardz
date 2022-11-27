class ApplicationController < ActionController::Base
<<<<<<< HEAD
     # Prevent CSRF attacks by raising an exception.
     # For APIs, you may want to use :null_session instead.
     protect_from_forgery with: :null_session
     skip_before_action :verify_authenticity_token
     respond_to :json
=======
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  respond_to :json
>>>>>>> origin/devise_auth_test

  before_action :configure_permitted_parameters, if: :devise_controller?

 def index
   render template: 'application'
 end

    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :phone_number, :address, :email, :password)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :phone_number, :email, :password, :current_password)}
         end
    

end