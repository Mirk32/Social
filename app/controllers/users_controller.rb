class UsersController < ApplicationController
  before_action :authenticate_user!
  def edit
    @user = User.find(params[:id]).decorate
  end

  def update
    @user = User.find(params[:id]).becomes(User)
    if @user.update(user_params)
      flash[:notice] = 'Даннi збережено успiшно!'
    else
      flash[:error] = 'Даннi не збережено!'
    end
    redirect_to edit_user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:avatar, :first_name, :last_name, :description, :phone_number,
                                 :state_number, :room_number, :specialization)
  end
end
