require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  subject(:end_game) { described_class.new(player_1, dead_player)}
  let(:player_1) { double :player, hp: 100 }
  let(:player_2) { double :player, hp: 100 }
  let(:dead_player) { double :player, hp: 0 }

  describe '#attack' do
    it 'attacks the opponent' do
      expect(player_2).to receive(:receive_attack)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#switch' do
    it 'switches the two players' do
      game.switch
      expect(game.attacker).to eq(player_2)
    end
  end

  describe '#game_over?' do
    it 'returns false if players both have remaining hp' do
      expect(game.game_over?).to eq false
    end

    it 'returns true if player reaches 0 HP' do
      expect(end_game.game_over?).to eq true
    end
  end

end
