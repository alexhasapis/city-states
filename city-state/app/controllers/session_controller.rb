class SessionController < ApplicationController

  def new

  end

  def create
    player = Player.find_by(email: params[:user][:email])
    if player && player.password == params[:password]
      session[:current_user_id] = player.id
      redirect_to '/players/home'
    else
      redirect_to 'sessions/login'
  end

  def delete
    session[:current_user_id] = nil
  end

end
