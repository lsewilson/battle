require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    $game = Game.new(@player_1, @player_2)
    redirect to '/fight'
  end

  get '/fight' do
    @game = $game
    erb :fight
  end

  post '/attack' do
    $game.attack($game.current_player)
    redirect to '/fight'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
