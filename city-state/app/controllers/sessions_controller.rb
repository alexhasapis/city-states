class SessionsController < ApplicationController

  def new

  end

  def create
    player = Player.find_by(email: params[:player][:email])
    if player && player.authenticate(params[:password])
      session[:current_player_id] = player.id
      redirect_to player_path(player)
    else
      Pry.start(binding)
      redirect_to login_path
    end
  end

  def delete
    session[:current_player_id] = nil
  end

end
