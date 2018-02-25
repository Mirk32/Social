class AdminController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'admin'
  before_action :authenticate_user!
  before_action :admin_only

  private

  def admin_only
    redirect_to root_path  unless current_user.admin?
  end

end
