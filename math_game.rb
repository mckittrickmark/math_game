require_relative 'question.rb'
require_relative 'game.rb'
require_relative 'player.rb'

player1 = Player.new "player1"
player2 = Player.new "player2"
fun = Game.new player1, player2

fun.start_game









