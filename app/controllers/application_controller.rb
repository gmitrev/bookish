class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?

  def admin?
    current_user && current_user.admin?
  end
end
