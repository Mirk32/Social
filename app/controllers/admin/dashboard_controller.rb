module Admin
  class DashboardController < AdminController
    before_action :authenticate_user!

    def index

    end
  end
end
