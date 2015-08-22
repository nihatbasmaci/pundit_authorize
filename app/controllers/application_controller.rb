class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # # Includes Authorization mechanism
  include Pundit
 
  protect_from_forgery with: :exception
 
  # Globally rescue Authorization Errors in controller.
  # Returning 403 Forbidden if permission is denied
  rescue_from Pundit::NotAuthorizedError, with: :permission_denied
 
  def permission_denied
    render(:file => File.join(Rails.root, 'public/403.html'), :status => 403, :layout => false)
  end
end
