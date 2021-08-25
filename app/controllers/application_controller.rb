class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def require_user_logged_in!
    if Current.user.nil?
      redirect_to new_session_path, alert: "You have to log in firstly"
    end
  end

end
