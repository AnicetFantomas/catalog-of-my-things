module GameAuthorUtils
    def add_game(games)
        puts 'Enter the game Multiplayer: '
        Multiplayer = gets.chomp
        puts 'Enter the game last played date: '
        last_played_at = gets.chomp
        puts 'Enter the game publish date: '
        publish_date = gets.chomp
        games << Game.new(Multiplayer, last_played_at, publish_date)
    end

    def add_author(_authors)
        puts 'Enter the author first name: '
        first_name = gets.chomp
        puts 'Enter the author last name: '
        last_name = gets.chomp
        @author << Author.new(first_name, last_name)
      end
end
