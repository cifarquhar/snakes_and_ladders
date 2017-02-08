require("minitest/autorun")
require('minitest/rg')
require_relative('../player.rb')

class TestPlayer < MiniTest::Test

def setup()

@player1 = Player.new("Colin")
@player2 = Player.new("Josef")
@player3 = Player.new("RNJesus")

end

def test_player_has_name
  assert_equal("Colin", @player1.name)
end

def test_player_can_move
  @player1.move
  assert_equal(false,@player1.position == 0)
end

end