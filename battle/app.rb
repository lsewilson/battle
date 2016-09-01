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
    @message = session[:message]
    erb :fight
  end

  post '/attack' do
    $game.attack($game.player_2)
    session[:message] = 'You attacked player 2!'
    redirect to '/fight'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
