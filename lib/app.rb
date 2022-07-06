require_relative 'book'
require_relative 'label'
require_relative '../data_module/load_data'
require_relative '../data_module/save_data'

class App
  include SaveData
  include LoadData

  def initialize()
    @labels = load_labels
    @books = load_books
  end

  def run
    display_options
    choice_options
  end

  def add_book
    puts 'Enter the book publisher: '
    publisher = gets.chomp
    puts 'Enter the book cover state: '
    cover_state = gets.chomp
    puts 'Enter the book publish date: '
    publish_date = gets.chomp
    @books << Book.new(publisher, cover_state, publish_date)
  end

  def add_label
    puts 'Enter the label title: '
    title = gets.chomp
    puts 'Enter the label color: '
    color = gets.chomp
    @labels << Label.new(title, color)
  end

  def list_books
    @books.each do |book|
      puts "Publisher: #{book.publisher}"
      puts "Cover state: #{book.cover_state}"
      puts '================'
    end
  end

  def list_labels
    @labels.each do |label|
      puts "Title: #{label.title}"
      puts "Color: #{label.color}"
      puts '================'
    end
  end

  def display_options
    puts 'List of My Books'
    puts '================'
    puts '1. Add a new book'
    puts '2. Add a new label'
    puts '3. List all books'
    puts '4. List all labels'
    puts '5. Exit'
    puts '================'
    puts 'Enter your choice: '
  end

  def choice_options
    choice = gets.chomp.to_i
    while choice != 5
      case choice
      when 1
        add_book
      when 2
        add_label
      when 3
        list_books
      when 4
        list_labels
      else
        puts 'Invalid choice'
      end
      display_options
      choice = gets.chomp.to_i
    end
    save_all(@books, @labels)
  end
end
