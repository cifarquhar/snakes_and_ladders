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


  # def test_has_spaces
  #   array = Array (0..100)
  #   assert_equal(array, @board.squares)
  # end

  def test_has_snakes
    assert_equal(false,@board.snakes_and_ladders.empty?)
  end

  def test_find_player_position
    assert_equal(0,@board.find_player(@player1))
  end

  # def test_player_moved
  #   @player1.move
  #   position = @player1.position
  #   assert_equal(position, )
  # end

  def test_check_player_landed_on_snake
    @player1.position = 26
    assert_equal( true , @board.check_step(@player1))
  end

  def test_check_player_landed_on_ladder
    @player1.position = 3
    assert_equal( true , @board.check_step(@player1))
  end

  # def test_snake_or_ladder_moves_player
  #   @player1.position = 26
  #   new_pos = @board.move_player(@player1)
  #   assert_equal(10,new_pos)
  # end



end