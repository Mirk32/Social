class Users::RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:email, :first_name, :last_name, :phone_number,
                                 :room_number, :state_number, :password, :password_confirmation)
  end
end