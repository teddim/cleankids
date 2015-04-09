class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    User.find_by(id: session[:user_id])
  end

  def authenticate_user
    unless current_user
      flash[:notice] = "To customize your chart, sign in below."
      redirect_to signin_path
    end
  end

end
