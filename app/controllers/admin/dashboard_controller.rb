module Admin
  class DashboardController < AdminController
    def index
      @user = current_user.decorate
    end
  end
end
