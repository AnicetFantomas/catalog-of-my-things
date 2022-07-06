def list_music_albums
  @music_albums.each_with_index do |a, i|
    puts "\t#{i + 1}.   id: #{a.id}, genre: #{a.genre.name}, date-published: #{a.publish_date}"
  end
end

def list_genres
  print "\tList of genre: "
  @genres.each do |g|
    if g == @genres[@genres.length - 1]
      puts g.name.to_s
    else
      print "#{g.name}, "
    end
  end
end
