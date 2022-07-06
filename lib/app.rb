class App
  def options
    puts '
    you can enter any number you want:
     1 - List all books
     2 - List all music albums
     3 - List all movies
     4 - List all games
     5 - List all genres
     6 - List all authors
     7 - List all sources
     8 - List all labels
     9 - Add a book
     10 - Add a music album
     11 - Add a movie
     12 - Add a game
     13 - Exit'
    puts ' Please select an option from the list above: '
  end

  # rubocop:disable Metrics
  def start
    options
    print 'Enter Option: '
    input = gets.chomp
    case input
    when '1'
      puts 'list of books'
    when '2'
      puts 'list all music albums'
    when '3'
      puts 'List all movies'
    when '4'
      puts 'List all games'
    when '5'
      puts 'List all genres'
    when '6'
      puts 'List all authors'
    when '7'
      puts 'List all sources'
    when '8'
      puts 'List all labels'
    when '9'
      puts 'Add a book'
    when '10'
      puts 'Add a music album'
    when '11'
      puts 'Add a movie'
    when '12'
      puts 'Add a game'
    when '13'
      puts 'Bye....'
    else
      puts 'Invalid option'
    end
  end
  # rubocop:enable Metrics
end
