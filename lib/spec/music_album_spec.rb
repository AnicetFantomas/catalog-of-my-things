require './music_album'
require './genre'

describe MusicAlbum do
  before :each do
    @album = MusicAlbum.new(publish_date: '01/01/2001', archived: false, on_spotify: true)
  end

  describe 'initialize' do
    it 'should be a MusicAlbum' do
      expect(@album).to be_instance_of(MusicAlbum)
    end

    it 'should initialize with id' do
      expect(@album.id.nil?).to be_falsey
    end
  end

  describe 'Unit test for MusicAlbum' do
    it 'should be on Spotify' do
      expect(@album.on_spotify).to be_truthy
    end

    it 'Can be archived' do
      expect(@album.can_be_archived?).to be_truthy
    end

    it 'Should be archived' do
      @album.move_to_archive
      expect(@album.archived).to be_truthy
    end
  end
end
