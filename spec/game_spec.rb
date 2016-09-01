require 'game'

describe Game do

  subject(:game){described_class.new(player_1, player_2)}
  let(:player_1){double :player_1}
  let(:player_2){double :player_2}

  describe '.attack' do
    it 'attacks the opponent' do
      expect(player_2).to receive(:receive_attack)
      game.attack(player_2)
    end
  end

  describe 'switch' do
    it 'switches the two players' do
      game.switch
      expect(game.attacker).to eq(player_2)
    end
  end

end
