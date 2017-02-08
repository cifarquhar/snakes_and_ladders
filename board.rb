class Board 

  attr_reader :squares, :snakes, :ladders

  def initialize
    #@squares = Array (0..100)
    @snakes = {start: 26, end: 10}
    @ladders = {start: 3, end: 7}
  end

  def find_player(player)
    return player.position
  end


  def check_step(player)
    if player.position == @snakes[:start] || player.position == @ladders[:start]
      return true
    else 
      return false
    end
  end




end