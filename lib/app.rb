require_relative 'book'
require_relative 'label'
require_relative 'game'
require_relative 'author'
require_relative '../data_module/load_data'
require_relative '../data_module/save_data'
require_relative 'book_label_utils'
require_relative 'game_author_utils'
require_relative './utility_music'
require_relative 'music_album'
require_relative 'genre'

class App
  include SaveData
  include LoadData
  include BookLabelUtils
  include GameAuthorUtils
  include UtilityMusic

  def initialize()
    @labels = load_labels
    @books = load_books
    @games = load_games
    @authors = load_authors
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
    puts '3. List all books'
    puts '4. List all labels'
    puts '5. Add a new music'
    puts '6. Add a new genre'
    puts '7. List all music'
    puts '8. List all genres'
    puts '9. Add a new Game'
    puts '10. Add a new Author'
    puts '11. List all games'
    puts '12. List all the authors'
    puts '13. Exit'
    puts '================'
    puts 'Enter your choice: '
  end

  def choice_options
    choice = gets.chomp.to_i
    while choice != 13
      case choice
      when 5..8
        music_options(choice, @musics, @genres)
      when 9..12
        game_author_options(choice, @games, @authors)
      else
        puts 'Invalid choice'
      end
      display_options
      choice = gets.chomp.to_i
    end

    save_books_labels(@books, @labels)
    save_games_authors(@games, @authors)
    save_musics_genres(@musics, @genres)
  end
end
