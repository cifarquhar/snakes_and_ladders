class Player

  attr_reader :name
  attr_accessor :position

  def initialize(name)
    @name = name
    @position = 0
  end

  def move
    @position += rand(1..6)
  end


end


