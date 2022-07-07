require_relative '../lib/item'
require_relative '../lib/genre'
require_relative '../lib/label'

describe Genre do
  before :each do
    @genre = Genre.new('Fantasy')
  end

  it 'has a name' do
    expect(@genre.name).to eq('Fantasy')
  end

  it 'has items' do
    expect(@genre.items).to eq([])
  end

  it 'can add items' do
    @genre.add_item(Item.new('2000-01-01'))
    expect(@genre.items.length).to eq(1)
  end
end
