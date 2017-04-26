require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/board')
require('./lib/hangman')
require('pry')

get('/') do
  new_board = Board.new()
  @gameboard = new_board.board()
  erb(:index)
end
