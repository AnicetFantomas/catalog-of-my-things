require 'json'
module SaveMusicData
  def save_music_albums(albums)
    data = []
    albums.each do |album|
      data << {
        'id' => album.id,
        'date_published' => album.publish_date,
        'archived' => album.archived,
        'on_spotify' => album.on_spotify,
        'genre' => album.genre.name
      }
    end
    File.write('./data/music_album.json', JSON.generate(data))
  end

  def save_music_genres(genres)
    data = []
    genres.each do |genre|
      data << {
        'id' => genre.id,
        'name' => genre.name
      }
    end
    File.write('./data/genre.json', JSON.generate(data))
  end

  def save_genres_names(genre_names)
    data = []
    genre_names.each do |name|
      data << name
    end
    File.write('./data/genre_names.json', JSON.generate(data))
  end
end
