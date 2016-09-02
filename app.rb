require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game  = Game.current_game
    erb :play
  end

  get '/attack' do
    @game = Game.current_game
    @game.attack(@game.opponent)
    redirect '/game-over' if @game.game_over?
    @game.switch
    erb :attack
  end

  get '/game-over' do
    @game = Game.current_game
    erb :game_over
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
