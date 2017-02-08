class Board 

  attr_accessor  :snakes_and_ladders, :ladders, :snakes

  def initialize(ladders,snakes)
    @ladders = ladders.array
    @snakes = snakes.array
    @snakes_and_ladders = @ladders.concat(@snakes)
  end

  def find_player(player)
    return player.position
  end

  def move(player)
    # @position += rand(1..6)
    player.position += 10 # For testing
  end

  def has_won(player)
    return true if player.position >=100
    return false
  end

  def stepped_on_mover(player)
    new_position = player.position
    for step in @snakes_and_ladders
      new_position = step[:end] if player.position == step[:start]
    end
    player.position = new_position
  end

end