require 'game'

describe Game do

  let(:player_class) { double :player_class, new: name}
  let(:tim) { double :tim, receive_damage: nil }

  describe '#initialize' do

    it 'should create new player instances' do
      expect.subject()

    end

  end

  describe '#attack' do

    it 'Tim is attacked' do
      allow(tim).to receive(:receive_damage)
      subject.attack(tim)
    end
  end

end
