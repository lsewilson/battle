# understands how players interact

class Game

  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def switch_turns
    current_player == player_1 ? @current_player = player_2 : @current_player = player_1
  end

  def attack(player)
    player.receive_damage
    switch_turns
  end

end
