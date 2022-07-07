module UtilityMusic
  def add_music(musics)
    puts 'Enter the music publish date: '
    publish_date = gets.chomp
    puts 'Is it on spotify? [y/n]: '
    on_userchoice = gets.chomp
    on_spotify = on_userchoice == 'y' ? true : false
    musics << MusicAlbum.new(publish_date, on_spotify)
  end

  def add_genre(genres)
    puts 'Enter the genre name: '
    name = gets.chomp
    genres << Genre.new(name)
  end

  def list_music(musics)
    musics.each do |music|
      puts "Publish_Date: #{music.publish_date}"
      puts "On Spotify: #{music.on_spotify}"
      puts '================'
    end
  end

  def list_genres(genres)
    genres.each do |genre|
      puts "Name: #{genre.name}"
      puts '================'
    end
  end
end
