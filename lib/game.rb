class Game

  attr_reader :player_1, :player_2, :attacker, :opponent

  def initialize(player_1, player_2)
    @player_array = [player_1, player_2]
    @player_1 = player_1
    @player_2 = player_2
    @opponent = player_2
    @attacker = player_1
  end

  def attack(opponent)
    opponent.receive_attack
  end

  def switch
    @attacker = nemesis_of(@attacker)
    @opponent = nemesis_of(@opponent)
  end

private
  def nemesis_of(attacker)
    @player_array.reject{|player| player == attacker}.sample
  end

end
