require 'sinatra/base'
require 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to '/fight'
  end

  get '/fight' do
    @player_1_name = $player_1.return_player_name
    @player_2_name = $player_2.return_player_name
    @message = session[:message]
    erb :fight
  end

  post '/attack' do
    session[:message] = 'You attacked player 2!'
    redirect to '/fight'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
