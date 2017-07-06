module SessionsHelper
  def login(user)
    session[:id] = user.id
  end

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def logged_in?
    !!current_user
  end

  def logout 
    session[:id] = nil
  end

  def authorize 
    unless logged_in?
      flash[:logged_in_error] = "You must be logged in."
      redirect_to_new_session_path
    end
  end
end
