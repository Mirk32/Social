class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :for_current_user_only, only: %i[edit]
  def edit; end

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id]).becomes(User)
    @user.social_links = {
      facebook: params[:facebook],
      twitter: params[:twitter],
      instagram: params[:instagram]
    }
    if @user.update(user_params)
      flash[:notice] = 'Даннi збережено успiшно!'
    else
      flash[:error] = 'Даннi не збережено!'
    end
    redirect_to edit_user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def for_current_user_only
    @user = User.find(params[:id]).decorate
    redirect_to root_path if @user != current_user
  end

  def user_params
    params.require(:user).permit(:avatar, :first_name, :last_name, :description, :phone_number,
                                 :state_number, :room_number, :specializations)
  end
end
