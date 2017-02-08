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


  def test_has_snakes
    assert_equal(false,@board.snakes_and_ladders.empty?)
  end

  def test_find_player_position
    assert_equal(0,@board.find_player(@player1))
  end

  def test_player_can_move
    @player1.move
    assert_equal(false,@player1.position == 0)
  end


  def test_snake_or_ladder_moves_player
    @player1.position = 26
    @player2.position = 3
    @player3.position = 4
    new_pos1 = @board.stepped_on_mover(@player1)
    new_pos2 = @board.stepped_on_mover(@player2)
    new_pos3 = @board.stepped_on_mover(@player3)
    assert_equal(10,new_pos1)
    assert_equal(7,new_pos2)
    assert_equal(4,new_pos3)
  end

  def test_player_has_won
    @player1.position = 103
    @player2.position = 45
    assert_equal(true,@player1.has_won)
    assert_equal(false,@player2.has_won)
  end




end