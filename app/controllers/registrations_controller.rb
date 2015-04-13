class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up."
      redirect_to tasks_path
    elsif @user.errors.any?
      flash[:notice] = @user.errors.full_messages.first
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
