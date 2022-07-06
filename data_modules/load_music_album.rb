require 'json'
module LoadMusicData
  def load_music_albums
    albums = []
    if File.exist?('./data/music_album.json')
      if File.empty?('./data/music_album.json')
        File.write('./data/music_album.json', [])
      else
        data = JSON.parse(File.read('./data/music_album.json'))
        data.each do |album|
          record = MusicAlbum.new(album['date_published'], album['archived'], on_spotify: album['on_spotify'])
          record.id = album['id']
          record.add_genre(Genre.new((album['genre'])))
          albums << record
        end
      end
    end
    albums
  end

  def load_music_genres
    genres = []
    if File.exist?('./data/genre.json')
      if File.empty?('./data/genre.json')
        File.write('./data/genre.json', [])
      else
        data = JSON.parse(File.read('./data/genre.json'))
        data.each do |genre|
          name = genre['name']
          music_genre = Genre.new(name)
          music_genre.id = genre['id']
          genres << music_genre
        end
      end
    end
    genres
  end

  def load_genres_names
    genre_names = []
    if File.exist?('./data/genre_names.json')
      if File.empty?('./data/genre_names.json')
        File.write('./data/genre_names.json', [])
      else
        data = JSON.parse(File.read('./data/genre_names.json'))
        data.each do |name|
          genre_names << name
        end
      end
    end
    genre_names
  end
end
