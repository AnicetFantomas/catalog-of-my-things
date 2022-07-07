module GameAuthorUtils
  def add_game(games)
    puts 'Enter the game Multiplayer: '
    multiplayer = gets.chomp
    puts 'Enter the game last played date: '
    last_played_at = gets.chomp
    puts 'Enter the game publish date: '
    publish_date = gets.chomp
    games << Game.new(multiplayer, last_played_at, publish_date)
  end

  def add_author(authors)
    puts 'Enter the author first name: '
    first_name = gets.chomp
    puts 'Enter the author last name: '
    last_name = gets.chomp
    authors << Author.new(first_name, last_name)
  end

  def list_games(games)
    games.each do |game|
      puts "Multiplayer: #{game.multiplayer}"
      puts "Last played date: #{game.last_played_at}"
      puts '================'
    end
  end

  def list_authors(authors)
    authors.each do |_author|
      puts "first name: #{label.first_name}"
      puts "last name: #{label.last_name}"
      puts '================'
    end
  end

  def game_author_options(choice, games, authors)
    case choice
    when 9
      add_game(games)
    when 10
      add_author(authors)
    when 11
      list_games(games)
    when 12
      list_authors(authors)
    end
  end
end
