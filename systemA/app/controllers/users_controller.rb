class UsersController < ApplicationController

def index
  @users = User.all
  render :json => @users
end

def show
    @user = User.find(params[:id])
    render :json => @user
end

def new
end

def create
  @user = User.new(user_params)
  if @user.save
    redirect_to @user
  else
    flash "error creating user"
  end
end

def edit
  @user = User.find(params[:id])
end

def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    render :json => @user
end

private
  def user_params
    params.required(:user).permit(:firstName, :lastName, :manager, :mobilePhone, :postalAddress, :status, :username, :password,
    :field1, :field2, :field3, :field4, :field5, :field6, :field7, :field8, :field9, :field10, :field11, :field12, :field13, :field14, :field15,
    :field16, :field17, :field18, :field19, :field20, :field21, :field22, :field23, :field24)
  end
end
