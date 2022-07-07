require_relative '../lib/item'
require_relative '../lib/music_album'


describe MusicAlbum do
  before :each do
    @item = MusicAlbum.new('2000-01-01')
  end

  it 'has a publish date' do
    expect(@item.publish_date).to eq('2000-01-01')
  end

  it 'has a on spotify flag' do
    expect(@item.on_spotify).to eq('false')
  end
end
