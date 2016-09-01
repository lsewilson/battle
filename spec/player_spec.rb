require 'player'

describe Player do

  subject(:player){described_class.new("Laura")}

  describe 'name method' do
    it 'should return its name' do
      expect(player.name).to eq "Laura"
    end

  end
end
