class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    user_path(current_user) || root_path
  end

  def configure_permitted_parameters
    added_attrs = [
      :username, :email, :password, :password_confirmation, :remember_me,
      profile_attributes: [
        :first_name, :last_name, :address1, :address2, :phone, :_destroy
      ]
    ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end
