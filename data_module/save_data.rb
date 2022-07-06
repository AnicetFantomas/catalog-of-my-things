require 'json'
module SaveData
  def save_all(books, labels)
    save_books(books)
    save_labels(labels)
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
end
