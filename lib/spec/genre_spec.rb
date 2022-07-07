require './genre'
require './item'

describe 'Genre class tests' do
  before :each do
    @genre = Genre.new(name: 'Rock')
    @item = Item.new(publish_date: '01/01/2001', archived: false, id: nil)
  end

  describe '#initialize' do
    it 'should initialize with a name' do
      expect(@genre.name).to eq('Rock')
    end

    it 'should be a Genre' do
      expect(@genre).to be_instance_of(Genre)
    end
  end

  describe 'Unit test for Genre class' do
    it 'should add an item to the genre' do
      @genre.add_item(@item)
      expect(@genre.items.length).to eq(1)
    end

    it 'check if id is not nil' do
      expect(@genre.id.nil?).to be_falsey
    end
  end
end
