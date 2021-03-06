require 'json'
require_relative '../lib/book'
require_relative '../lib/label'
require_relative '../lib/game'
require_relative '../lib/author'
require_relative '../lib/music_album'
require_relative '../lib/genre'

module LoadData
  def load_books
    if File.exist?('./data/books.json')
      books_json = File.read('./data/books.json')
      books_hash = JSON.parse(books_json)
      books_hash.map do |book_hash|
        Book.new(book_hash['publisher'], book_hash['cover_state'], book_hash['publish_date'])
      end
    else
      []
    end
  end

  def load_labels
    if File.exist?('./data/labels.json')
      labels_json = File.read('./data/labels.json')
      labels_hash = JSON.parse(labels_json)
      labels_hash.map do |label_hash|
        Label.new(label_hash['title'], label_hash['color'])
      end
    else
      []
    end
  end

  def load_games
    if File.exist?('./data/games.json')
      games_json = File.read('./data/games.json')
      games_hash = JSON.parse(games_json)
      games_hash.map do |game_hash|
        Game.new(game_hash['multiplayer'], game_hash['last_played_at'], game_hash['publish_date'])
      end
    else
      []
    end
  end

  def load_musics
    if File.exist?('./data/musics.json')
      musics_json = File.read('./data/musics.json')
      musics_hash = JSON.parse(musics_json)
      musics_hash.map do |music_hash|
        MusicAlbum.new(music_hash['publish_date'], music_hash['on_spotify'])
      end
    else
      []
    end
  end

  def load_authors
    if File.exist?('./data/authors.json')
      authors_json = File.read('./data/authors.json')
      authors_hash = JSON.parse(authors_json)
      authors_hash.map do |author_hash|
        Author.new(author_hash['first_name'], author_hash['last_name'])
      end
    else
      []
    end
  end

  def load_genres
    if File.exist?('./data/genres.json')
      genres_json = File.read('./data/genres.json')
      genres_hash = JSON.parse(genres_json)
      genres_hash.map do |genre_hash|
        Genre.new(genre_hash['name'])
      end
    else
      []
    end
  end
end
