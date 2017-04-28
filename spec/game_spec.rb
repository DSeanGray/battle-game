require_relative '../models/game'
describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2}

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:damage)
      game.attack(player_2)
    end
  end

    it 'gets an instance of player 1' do
      expect(game.player_1).to eq player_1
    end

    it 'gets an instance of player 2' do
      expect(game.player_2).to eq player_2
    end


end
