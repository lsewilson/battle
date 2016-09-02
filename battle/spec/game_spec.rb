require 'game'

describe Game do
  subject(:game) {described_class.new(player_class1.new, player_class2.new)}

  let(:player_class1) {double :player_class1, new: tim}
  let(:player_class2) {double :player_class2, new: matthew}
  let(:tim) { double :tim, receive_damage: nil, hit_points: 0 }
  let(:matthew) {double :matthew, receive_damage: nil}

  describe '#initialize' do

    it 'should the first player should be player_1' do
      expect(game.current_player).to eq tim
    end

  end

  describe "#switch_turns" do

    it 'should change current_player from player_1 to player_2' do
      game.switch_turns
      expect(game.current_player).to eq matthew
    end

    it 'should change current_player from player_2 to player_1' do
      game.switch_turns
      game.switch_turns
      expect(game.current_player).to eq tim
    end

  end

  describe '#attack' do

    it 'Tim is attacked' do
      expect(tim).to receive(:receive_damage)
      game.attack(tim)
    end

    it 'Matthew is attacked' do
      expect(matthew).to receive(:receive_damage)
      game.attack(matthew)
    end
  end

  describe 'game over' do
    it 'posts a game over message' do
      game.attack(tim)
      expect(game.game_over).to eq true
    end
  end
end
