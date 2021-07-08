class ApplicationController < ActionController::Base
  before_action :update_allowed_parameters, if: :devise_controller?

  def update_allowed_parameters
    permissions = proc do |user|
      user.permit(:email,
                  :password,
                  :password_confirmation,
                  :current_password,
                  :name,
                  :username,
                  :avatar)
    end

    devise_parameter_sanitizer.permit(:sign_up, &permissions)
    devise_parameter_sanitizer.permit(:account_update, &permissions)
  end
end
