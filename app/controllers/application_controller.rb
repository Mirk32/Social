class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    return admin_root_path if resource.admin?
    root_path
  end

  def admin_only
    redirect_to root_path unless current_user.admin?
  end
end
