require './lib/messages.rb'
require 'pry'

class BattleShip
  include Messages



  def welcome
    puts prompt
    value = gets.chomp!
    if value == "i"
      puts instructions
    elsif value == "q"
      exit
    elsif value == "p"
      puts "play"
    else
      puts "Invalid Command"
    end
  end

end
