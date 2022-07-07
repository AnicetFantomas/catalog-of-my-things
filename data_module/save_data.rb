require 'json'
module SaveData
  def save_all(books, labels, musics, genres)
    save_books(books)
    save_labels(labels)
    save_musics(musics)
    save_genres(genres)
  end

  def save_books(books)
    books_to_save = []
    books.each do |book|
      books_to_save << { 'publisher' => book.publisher, 'cover_state' => book.cover_state,
                         'publish_date' => book.publish_date }
    end

    File.write('./data/books.json', JSON.generate(books_to_save))
  end

  def save_labels(labels)
    labels_to_save = []
    labels.each do |label|
      labels_to_save << { 'title' => label.title, 'color' => label.color }
    end

    File.write('./data/labels.json', JSON.generate(labels_to_save))
  end

  def save_musics(musics)
    musics_to_save = []
    musics.each do |music|
      musics_to_save << { 'publish_date' => music.publish_date, 'on_spotify' => music.on_spotify }
    end

    File.write('./data/musics.json', JSON.generate(musics_to_save))
  end

  def save_genres(genres)
    genres_to_save = []
    genres.each do |genre|
      genres_to_save << { 'name' => genre.name }
    end

    File.write('./data/genres.json', JSON.generate(genres_to_save))
  end
end
