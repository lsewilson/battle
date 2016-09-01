class Player

  INITIAL_HP = 60

  def initialize(name)
    @name = name
    @hit_points = INITIAL_HP
  end


  def return_player_name
    name
  end

  def attack(player)
    player.receive_damage
  end
  
  def receive_damage
    @hit_points -= 10
  end
  # private

  attr_reader :name, :hit_points

end
