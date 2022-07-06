require 'spec_helper'

describe MusicAlbum do
  before(:all) do
    @app = App.new
    @music = MusicAlbum.new('2015-06-23', false, on_spotify: true)
    @pop = Genre.new('pop')
    @music.add_genre(@pop)
  end

  context 'test all class properties' do
    it 'check if music is an instance' do
      expect(@music).to be_an_instance_of MusicAlbum
    end

    it 'show inheritance from item class' do
      expect(@music).to be_kind_of Item
    end

    it 'check if music can be moved to archive' do
      @music.move_to_archive
      expect(@music.archived).to eql(false)
    end

    it 'confirm genre of music' do
      expect(@music.genre.name).to eql('pop')
    end
  end

  context 'test app methods for music albums' do
    before(:all) do
      @music_albums = []
      add_music_album(@music_albums, @music)
    end

    it 'add a music album to a list of albums' do
      expect(@music_albums).to include(@music)
    end
  end
end
