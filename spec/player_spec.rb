require 'player'

describe Player do

  subject(:player1){described_class.new("Laura")}
  subject(:player2){described_class.new("Joseph")}

  describe '#receive_attack' do
    it 'should decrease hp' do
      expect{player2.receive_attack}.to change{player2.hp}.by(-10)
    end
  end

end
