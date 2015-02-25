class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_player
  before_action :authenticate!, except: [:new]

  def current_player
    if session[:current_player_id]
      @current_player ||= Player.find(session[:current_player_id])
    else
      nil
    end
  end

  def authenticate!
    redirect_to '/sessions/login' unless current_player
  end

end
