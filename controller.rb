require('sinatra')
require('sinatra/reloader')
require_relative('./models/game.rb')

get '/' do
  "hello"
end



get '/:type1/:type2' do
  game1 = Game.new(params[:type1], params[:type2])
  @game_result = game1.result
  erb( :result )
end
