# understands how players interact

class Game

  attr_reader :current_player, :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def switch_turns
    @current_player = opponent_of(current_player)
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def attack(player)
    player.receive_damage
    switch_turns
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end
