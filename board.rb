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


  def check_step(player)
    for step in @snakes_and_ladders
      return true  if player.position == step[:start]
    end
  end

  # def move_player(player)
  #   if check_step 
  #     player.position = @snakes[:end]
  #   end
  # end



end