require_relative '../lib/game'
require_relative '../lib/item'
require_relative '../lib/author'

describe 'Game' do 
    it 'should be able to be achieved' do
        game = Game.new('Motal Combat', '2022-01-01', '2021-01-01')
        expect(game.can_be_archived?).to be false
    end

    it 'should be an instance of Game' do 
        game = Game.new("Shadow Fight", '2022-01-01', '2021-01-01')
        expect(game).to be_an_instance_of Game
    end
end

describe 'add_game' do 
    it 'should be able to add a game' do
        game = Game.new("Car Parking", '2022-01-01', '2021-01-01')
        expect(game.multiplayer).to eq 'Car Parking'
        expect(game.last_played_at).to eq '2022-01-01'
        expect(game.publish_date).to eq '2021-01-01'
    end
end

describe 'move_to_archive' do
    it 'should be able to move to archive' do
      game = Game.new('Super Bob', '2022-01-01', '2008-01-01')
      game.move_to_archive
      expect(game.archived).to be true
    end
  end