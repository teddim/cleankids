class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :guest_user

  def guest_user
    user = User.find_by(email: "guest@example.com")
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id] == nil
      guest_user
      flash[:notice] = "You are currently a guest, if you'd like to customize a chart, sign in."

    end
    User.find_by(id: session[:user_id])
  end

  # def authenticate_user
  #   unless current_user
  #     flash[:notice] = "You are currently a guest, if you'd like to customize a chart, sign in."
  #   end
  # end

end
