require("minitest/autorun")
require('minitest/rg')
require_relative('../snake_ladder.rb')

class TestSnakeLadder < MiniTest::Test

  def setup()
    
    @ladder_array = SnakeLadder.new([
      {start: 2, end: 6},
      {start: 76, end: 89},
      {start: 45, end: 67},
      {start: 23, end: 32},
      {start: 34, end: 46},
      {start: 22, end: 50}
      ])

    @dummy_array = SnakeLadder.new([])

    @snake_array = SnakeLadder.new([
      {start: 35, end: 16},
      {start: 76, end: 54},
      {start: 45, end: 20},
      {start: 23, end: 2},
      {start: 98, end: 46},
      {start: 65, end: 14}
      ])


  end

  def test_there_are_ladders
    array_length = @ladder_array.get_array_size
    assert_equal(true,array_length != 0)
  end

  def test_no_ladders
    array_length = @dummy_array.get_array_size
    assert_equal(true, array_length == 0)
  end

  def test_there_are_snakes
    array_length = @snake_array.get_array_size
    assert_equal(true,array_length != 0)
  end

  def test_no_snakes
    array_length = @dummy_array.get_array_size
    assert_equal(true, array_length == 0)
  end


end

