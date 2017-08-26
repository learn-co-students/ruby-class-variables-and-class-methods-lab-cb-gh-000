class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []



  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end


  def Song.count
    return @@count
  end


  def Song.artists
    return @@artists.uniq!
  end


  def Song.genres
    return @@genres.uniq!
  end



  def Song.genre_count

    genre_count = Hash.new(0)

    genres = @@genres

    genres.each { |genres| genre_count[genres] += 1 }
    return genre_count
  end


  def Song.artist_count

    artist_count = Hash.new(0)

    artists = @@artists
  
    artists.each { |artists| artist_count[artists] += 1 }
    return artist_count
  end
end
