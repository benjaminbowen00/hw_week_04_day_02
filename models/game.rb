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
  end
end
