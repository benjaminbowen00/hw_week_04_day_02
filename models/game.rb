require 'pry'

class Game
  def initialize(inp1, inp2)
    @inp1 = inp1.downcase
    @inp2 = inp2.downcase

  end

  def result
    arr = [@inp1, @inp2].sort
    return "Rock wins" if arr == ["rock", "scissors"]
    return "Paper wins" if arr == ["paper", "rock"]
    return "Scissors wins" if arr == ["paper", "scissors"]
    return "It's a draw" if arr[0] == arr[1]
  end

  def winning_info
    arr = [@inp1, @inp2]
    return {player: "Player 1", hand: @inp1 } if arr == ["rock", "scissors"]
    return {player: "Player 2", hand: @inp2 } if arr == ["rock", "paper"]

    return {player: "Player 1", hand: @inp1 } if arr == ["paper", "rock"]
    return {player: "Player 2", hand: @inp2 } if arr == ["paper", "scissors"]

    return {player: "Player 1", hand: @inp1 } if arr == ["scissors", "paper"]
    return {player: "Player 2", hand: @inp2 } if arr == ["scissors", "rock"]

    return {player: "Neither", hand: @inp1} if arr[0] == arr[1]

  end

  def game_statement
  info = self.winning_info
  return "Both players played #{info[:hand]} so the result is a draw " if info[:player] == "Neither"
  return "#{info[:player]} won by playing #{info[:hand]}"
  end

end
