class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  layout :resolve_layout

  private

  def resolve_layout
    if devise_controller? && resource_name == :user && action_name == 'new'
      'sign_in'
    else
      'application'
    end
  end
end
