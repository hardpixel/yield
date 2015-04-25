class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Require user authentication
  before_action :authenticate_user!

  # Configure devise parameters
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  # Set per_page globally
  WillPaginate.per_page = 15

  protected
    def configure_devise_permitted_parameters
      parameters = [:first_name, :last_name, :avatar]

      parameters.each do |p|
        devise_parameter_sanitizer.for(:sign_up) << p
        devise_parameter_sanitizer.for(:account_update) << p
      end
    end
end
