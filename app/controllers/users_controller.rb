class UsersController < ApplicationController
  def new
    @user = User.new
  end


  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
       flash[:success] = 'Welcome, your account was created successfully!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  def edit
   @user = User.find(params[:id])
  end

  def update
   @user = User.find(params[:id])
   if @user.update (user_params)
       flash[:success] = “Profile updated successfully”
       redirect_to @user
   else
       render ‘edit’
   end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :age)
  end


end
