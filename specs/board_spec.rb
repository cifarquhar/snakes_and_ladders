require("minitest/autorun")
require('minitest/rg')
require_relative('../player.rb')
require_relative('../board.rb')
require_relative('../snake_ladder.rb')

class TestBoard < MiniTest::Test

  def setup()

    @ladders = SnakeLadder.new([
      {start: 2, end: 6},
      {start: 76, end: 89},
      {start: 45, end: 67},
      {start: 23, end: 32},
      {start: 34, end: 46},
      {start: 22, end: 50}
      ])

    @snakes = SnakeLadder.new([
      {start: 35, end: 16},
      {start: 76, end: 54},
      {start: 45, end: 20},
      {start: 23, end: 2},
      {start: 98, end: 46},
      {start: 65, end: 14}
      ])

    @empty_ladders = SnakeLadder.new([])
    @random_ladders = @empty_ladders.randomize_ladders

    @empty_snakes = SnakeLadder.new([])
    @random_snakes = @empty_snakes.randomize_snakes

    @board = Board.new(@ladders,@snakes)
    #@random_board = Board.new(@random_ladders,@random_snakes)
    @player1 = Player.new("Colin")
    @player2 = Player.new("Josef")
    @player3 = Player.new("RNJesus")
  end

  def test_has_snakes_or_ladders
    assert_equal(false,@board.snakes_and_ladders.empty?)
    #assert_equal(false,@random_board.snakes_and_ladders.empty?)
  end

  def test_find_player_position
    assert_equal(0,@board.find_player(@player1))
  end

  def test_player_can_move
    @board.move(@player1)
    assert_equal(false,@player1.position == 0)
  end

  def test_snake_or_ladder_moves_player
    @player1.position = 35
    @player2.position = 22
    @player3.position = 4
    new_pos1 = @board.stepped_on_mover(@player1)
    new_pos2 = @board.stepped_on_mover(@player2)
    new_pos3 = @board.stepped_on_mover(@player3)
    assert_equal(16,new_pos1)
    assert_equal(50,new_pos2)
    assert_equal(4,new_pos3)
  end

  def test_player_evaded_snakes_ladders
    @board.move(@player3)
    assert_equal(10,@player3.position)
  end

  def test_player_has_won
    @player1.position = 103
    @player2.position = 45
    assert_equal(true,@board.has_won(@player1))
    assert_equal(false,@board.has_won(@player2))
  end

end