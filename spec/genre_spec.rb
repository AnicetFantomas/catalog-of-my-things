require './spec_helper'

describe Genre do
  before(:all) do
    @jazz = Genre.new('jazz')
    @album = MusicAlbum.new('2015-06-23', false, on_spotify: true)
    @jazz.add_item(@album)
    @app = App.new
  end
  context 'test all class properties' do
    it 'check if genre is an instance' do
      expect(@jazz).to be_an_instance_of Genre
    end
    it 'show inheritance from item class' do
      expect(@jazz).to be_kind_of Item
    end
    it 'check if genre can be moved to archive' do
      @jazz.move_to_archive
      expect(@jazz.archived).to eql(false)
    end
    it 'confirm genre of music' do
      expect(@jazz.name).to eql('jazz')
    end
  end
  context 'test app methods for genres' do
    before(:all) do
      @genres = []
      add_genre(@genres, @jazz)
    end
    it 'add a genre to a list of genres' do
      expect(@genres).to include(@jazz)
    end
  end
end
