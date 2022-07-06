require_relative '../lib/book'
require_relative '../lib/item'
require_relative '../lib/label'

describe 'Label' do
    it 'should create a author object' do
      author = Author.new('Anicet', 'Fantomas')
      expect(author).to be_an_instance_of Author
    end
  end

  describe 'add_item' do
    it 'should add an item to an author' do
      author = Author.new('Anicet', 'Fantomas')
      game = Game.new('Tetris', '2022-01-01', '2022-01-01')
      author.add_item(game)
      expect(author.items).to eq [game]
    end

    it 'should add multiple items to a label' do
        author = Author.new('Gift', 'red')
        game = Game.new('Pengiun', 'good', '2022-01-01')
        game2 = Game.new('Spring', 'good', '2022-01-01')
        author.add_item(game)
        author.add_item(game2)
        expect(author.items).to eq [game, game2]
      end
end