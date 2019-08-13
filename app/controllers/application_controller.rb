class ApplicationController < ActionController::Base

  # Pundit
  include Pundit

  # Manages Pundit errors
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception

  # Layout
  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller? && resource_name == :admin
      "backoffice_devise"
    elsif devise_controller? && resource_name == :member
      "site_devise"
    else
      "application"
    end
  end

  def user_not_authorized
    flash[:alert] = t(messages.not_authorized)
    redirect_to(request.referrer || root_path)
  end
end
