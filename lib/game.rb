class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(opponent)
    opponent.receive_attack
  end

  def switch(player_1, player_2)
    @player_1 = player_2
    @player_2 = player_1
  end

end
