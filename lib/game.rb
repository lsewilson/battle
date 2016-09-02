class Game

  attr_reader :attacker, :opponent

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @opponent = player_2
    @attacker = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(opponent)
    opponent.receive_attack
  end

  def switch
    @attacker = nemesis_of(@attacker)
    @opponent = nemesis_of(@opponent)
  end

  def game_over?
    player_1.hp == 0 || player_2.hp == 0
  end

private
  def nemesis_of(attacker)
    @players.reject{|player| player == attacker}.sample
  end

end
