require 'game'

describe Game do
  subject(:game) {described_class.new(:player_class1, :player_class)}

  let(:player_1) {double :player_class1, new: tim}
  let(:player_2) {double :player_class2, new: matthew}
  let(:tim) { double :tim, receive_damage: nil }
  let(:matthew) {double :matthew, receive_damage: nil}

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

end
