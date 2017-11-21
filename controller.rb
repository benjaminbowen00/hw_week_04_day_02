require('sinatra')
require('sinatra/reloader')
require_relative('./models/game.rb')

get '/' do
  erb :home
end



get '/:hand1/:hand2' do

  game1 = Game.new(params[:hand1], params[:hand2])
  @game_result = game1.result
  @game_statement = game1.game_statement
  erb( :result )
end
