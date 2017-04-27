require_relative '../models/player'

describe Player do
  subject(:sam) { Player.new('Sam') }
	describe '#name' do
	    it 'returns the player name' do
	      expect(sam.name).to eq 'Sam'
	    end
	end
end
