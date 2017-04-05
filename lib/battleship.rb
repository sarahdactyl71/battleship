require './lib/messages.rb'
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
      # start game
    else
      puts "Invalid Command"
      welcome
    end
  end

end
