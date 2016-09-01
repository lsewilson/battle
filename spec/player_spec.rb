require 'player'

describe Player do

  subject(:player1){described_class.new("Laura")}
  subject(:player2){described_class.new("Joseph")}

  describe 'name method' do
    it 'should return its name' do
      expect(player1.name).to eq "Laura"
    end
  end

  describe '.receive_attack' do
    it 'should decrease hp by 10' do
      expect{player2.receive_attack}.to change{player2.hp}.by(-10)
    end
  end

end
