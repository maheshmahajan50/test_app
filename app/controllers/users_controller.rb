class UsersController < ApplicationController
  before_action :get_user, only: [:show, :update]
  def index
    @users = User.employee
  end

  def show
  end

  def update
  end

  private

  def get_user
    @user  = User.find(params[:id])
  end
end
