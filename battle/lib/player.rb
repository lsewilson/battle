# understands how to calculate hit points

class Player

  attr_reader :name, :hit_points
  INITIAL_HP = 60

  def initialize(name)
    @name = name
    @hit_points = INITIAL_HP
  end


  def return_player_name
    name
  end

  def receive_damage
    @hit_points -= 10
    check_HP
  end

  private

  def check_HP
    'You lost' if @hit_points == 0
  end


end
