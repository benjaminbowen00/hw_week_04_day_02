require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game.rb')


class TestGame < MiniTest::Test

  def setup
    @game1= Game.new("scissors", "rock")
    @game2= Game.new("scissors", "paper")
    @game3= Game.new("rock", "scissors")
    @game4= Game.new("rock", "paper")
    @game5= Game.new("paper", "scissors")
    @game6= Game.new("paper", "rock")
  end

  def test_scissors_loses_vs_rock
    assert_equal("Rock wins", @game1.result)
  end

  def test_scissors_wins_vs_paper
    assert_equal("Scissors wins", @game2.result)
  end

  def test_rock_wins_vs_scissors
    assert_equal("Rock wins", @game3.result)
  end

  def test_rock_loses_vs_paper
    assert_equal("Paper wins", @game4.result)
  end

  def test_paper_loses_vs_scissors
    assert_equal("Scissors wins", @game5.result)
  end

  def test_paper_wins_vs_rock
    assert_equal("Paper wins", @game6.result)
  end


end
