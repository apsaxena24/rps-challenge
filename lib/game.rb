require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :computer_input

  def initialize
    @rps_map = [[0,-1,1],[1,0,-1],[-1,1,0]]
    @rps_hash = {rock: 0, paper: 1, scissor: 2}
  end

  def rps_logic(player_int, computer_int)
    @rps_map[player_int][computer_int]
  end

  def return_result
    if (@result == 0)
      "Tie"
    elsif (@result == -1)
      "You Lose!"

    else
      "You Win!"

    end
  end

  def game_result(player_input)
    @computer_input = Computer.new.computer_input

    player_int = @rps_hash[player_input]
    computer_int = @rps_hash[@computer_input]

    @result = rps_logic(player_int, computer_int)
    return_result
  end


end
