require_relative 'book'
require_relative 'label'
require_relative '../data_module/load_data'
require_relative '../data_module/save_data'
require_relative 'book_label_utils'

class App
  include SaveData
  include LoadData
  include BookLabelUtils

  def initialize()
    @labels = load_labels
    @books = load_books
  end

  def run
    display_options
    choice_options
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
        add_book(@books)
      when 2
        add_label(@labels)
      when 3
        list_books(@books)
      when 4
        list_labels(@labels)
      else
        puts 'Invalid choice'
      end
      display_options
      choice = gets.chomp.to_i
    end
    save_all(@books, @labels)
  end
end
