module BookLabelUtils
  def add_book(books)
    puts 'Enter the book publisher: '
    publisher = gets.chomp
    puts 'Enter the book cover state: '
    cover_state = gets.chomp
    puts 'Enter the book publish date: '
    publish_date = gets.chomp
    books << Book.new(publisher, cover_state, publish_date)
  end

  def add_label(_labels)
    puts 'Enter the label title: '
    title = gets.chomp
    puts 'Enter the label color: '
    color = gets.chomp
    @labels << Label.new(title, color)
  end

  def list_books(books)
    books.each do |book|
      puts "Publisher: #{book.publisher}"
      puts "Cover state: #{book.cover_state}"
      puts '================'
    end
  end

  def list_labels(labels)
    labels.each do |label|
      puts "Title: #{label.title}"
      puts "Color: #{label.color}"
      puts '================'
    end
  end

  def book_label_options(input, books, labels)
    case input
    when 1
      add_book(books)
    when 2
      add_label(labels)
    when 3
      list_books(books)
    when 4
      list_labels(labels)
    end
  end
end
