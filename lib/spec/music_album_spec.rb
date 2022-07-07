require_relative '../lib/item'
require_relative '../lib/genre'

describe Genre do
  before :each do
    @item = Item.new('2000-01-01')
    @genre = Genre.new(name: 'any name')
  end

  it 'has a name' do
    expect(@genre.name).to eq('any name')
  end

  it 'has items' do
    expect(@genre.items).to eq([])
  end

  it 'can add items' do
    @genre.add_item(@item)
    expect(@genre.items.length).to eq(1)
  end
end
