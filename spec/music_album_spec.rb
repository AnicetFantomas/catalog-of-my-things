require './helpers/spec_helper'

describe MusicAlbum do
before(:all) do
  @app = App.new
  @music = MusicAlbum.new('2000-01-01', archived: false, on_spotify: true)
  @pop = Genre.new('Pop')
  @rock = Genre.new('Rock')
  @music.add_genre(@pop)
end

context 'test all class properties' do
  it 'should have a publish date' do
    expect(@music.publish_date).to eq('2000-01-01')
  end
  it 'should have a archived property' do
    expect(@music.archived).to eq(false)
  end
  it 'should have a on_spotify property' do
    expect(@music.on_spotify).to eq(true)
  end
  it 'should have a genre property' do
    expect(@music.genre).to eq(@pop)
  end
end

context 'test all class methods' do
  it 'should have a can_be_archived? method' do
    expect(@music.can_be_archived?).to eq(true)
  end
end
end

