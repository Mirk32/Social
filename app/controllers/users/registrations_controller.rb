module Users
  class RegistrationsController < Devise::RegistrationsController
    private

    def after_sign_up_path_for(_resource)
      edit_user_path(current_user)
    end

    def sign_up_params
      params.require(:user).permit(:email, :first_name, :last_name, :phone_number,
                                   :room_number, :state_number, :password, :password_confirmation)
    end
  end
end
