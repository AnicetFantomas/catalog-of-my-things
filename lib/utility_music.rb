module UtilityMusic
  def add_music(musics)
    puts 'Enter the music publisher: '
    publisher = gets.chomp
    puts 'Enter the music cover state: '
    cover_state = gets.chomp
    puts 'Enter the music publish date: '
    publish_date = gets.chomp
    musics << Music.new(publisher, cover_state, publish_date)
  end

  def add_genre(_genres)
    puts 'Enter the genre name: '
    name = gets.chomp
    @genre << Genre.new(name)
  end

  def list_music(musics)
    musics.each do |music|
      puts "Publisher: #{music.publisher}"
      puts "Cover state: #{music.cover_state}"
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
