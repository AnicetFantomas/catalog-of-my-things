require_relative 'book'
require_relative 'label'
require_relative '../data_module/load_data'
require_relative '../data_module/save_data'
require_relative 'book_label_utils'
require_relative './utility_music'
require_relative 'music_album'
require_relative 'genre'

class App
  include SaveData
  include LoadData
  include BookLabelUtils
  include UtilityMusic

  def initialize()
    @labels = load_labels
    @books = load_books
    @musics = load_musics
    @genres = load_genres
  end

  def run
    display_options
    choice_options
  end

  def display_options
    puts 'List of My Things'
    puts '================'
    puts '1. Add a new book'
    puts '2. Add a new label'
    puts '5. Add a new music'
    puts '6. Add a new genre'
    puts '3. List all books'
    puts '4. List all labels'
    puts '7. List all music'
    puts '8. List all genres'
    puts '9. Exit'
    puts '================'
    puts 'Enter your choice: '
  end

  def choice_options
    choice = gets.chomp.to_i
    while choice != 9
      case choice
      when 5..8
        music_options(choice, @musics, @genres)
      else
        puts 'Invalid choice'
      end
      display_options
      choice = gets.chomp.to_i
    end
    save_all(@books, @labels, @musics, @genres)
  end
end
