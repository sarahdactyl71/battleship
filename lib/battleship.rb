require './lib/messages.rb'
require './lib/game.rb'
require 'pry'

class BattleShip

include Messages

  def welcome
    puts prompt
    value = gets.chomp!
    if value == "i"
      puts instructions
      welcome
    elsif value == "q"
      exit
    elsif value == "p"
      puts begin_game_prompt
      Game.new
    else
      puts "Invalid Command"
      welcome
    end
  end

end
