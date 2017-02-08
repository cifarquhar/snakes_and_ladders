require("minitest/autorun")
require('minitest/rg')
require_relative('../player.rb')
require_relative('../board.rb')

class TestBoard < MiniTest::Test

  def setup()


  @board = Board.new
  @player1 = Player.new("Colin")
  @player2 = Player.new("Josef")
  @player3 = Player.new("RNJesus")


  end


  def test_has_spaces
    array = Array (0..100)
    assert_equal(array, @board.squares)
  end

  def test_has_snakes
    assert_equal(false,@board.snakes.empty?)

  end




end