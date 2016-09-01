require 'player'

describe Player do

  subject(:player_one) { described_class.new("Tim")}

  describe '#return_player_name' do

    it "should return the player's name" do
      expect(player_one.return_player_name).to eq "Tim"
    end

  end

  describe 'initialize' do
    it 'set HP to INITIAL_HP' do
      expect(player_one.hit_points).to eq Player::INITIAL_HP
    end
  end

  describe '#attack_damage' do
    it 'reduces HP by 10' do
      expect{player_one.attack_damage}.to change{player_one.hit_points}.by -10
    end
  end
end
