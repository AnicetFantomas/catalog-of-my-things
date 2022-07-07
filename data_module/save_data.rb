require 'json'
module SaveData
  def save_all(books, labels, games, authors)
    save_books(books)
    save_labels(labels)
    save_games(games)
    save_authors(authors)
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

  def save_games(games)
    games_to_save = []
    games.each do |game|
      games_to_save << { 'multiplayer' => game.multiplayer, 'last_played_at' => game.last_played_at,
                         'publish_date' => game.publish_date }
    end

    File.write('./data/games.json', JSON.generate(games_to_save))
  end

  def save_authors(authors)
    authors_to_save = []
    authors.each do |author|
      authors_to_save << { 'first_name' => author.first_name, 'last_name' => author.last_name }
    end

    File.write('./data/authors.json', JSON.generate(authors_to_save))
  end
end
