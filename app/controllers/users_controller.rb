class UsersController < ApplicationController
  before_action :get_user, only: [:edit, :show, :update]
  def index
    @users = User.employee
  end

  def edit
    unless current_user == @user
      redirect_to root_path
      flash[:notice] = "You can only update your profile"
    end
  end

  def show
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
      flash[:notice] = "Your profile has been updated."
    else
      flash[:error] = @user.errors.join(' ')
    end
  end

  private

  def get_user
    @user  = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :date_of_birth,
      :accepted_terms,
      insurance_ids: []
    )
  end
end
