require 'sinatra/base'
require_relative 'models/player'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1 = $player_1.player_name
    @player_2 = $player_2.player_name
    erb :play
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect('/play')
  end

  get '/attack' do
    @player_1 = $player_1.player_name
    @player_2 = $player_2.player_name
    @attacked = params[:attack]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
