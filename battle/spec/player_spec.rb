require 'player'

describe Player do

  subject(:player_one) { described_class.new("Tim")}

  describe '#return_player_name' do

    it "should return the player's name" do
      expect(player_one.return_player_name).to eq "Tim"
    end

  end

end
