class Board 

  attr_reader :squares, :snakes_and_ladders

  def initialize
    #@squares = Array (0..100)
    @snakes_and_ladders = [{start: 26, end: 10},{start: 3, end: 7}]
    #@ladders = {start: 3, end: 7}
  end

  def find_player(player)
    return player.position
  end


  def stepped_on_mover(player)

    new_position = player.position

    for step in @snakes_and_ladders
      new_position = step[:end] if player.position == step[:start]
    end

    player.position = new_position
  end





end