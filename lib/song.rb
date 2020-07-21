class Song
  # Initalizing the getters and setters for the instance variables of the 'Song' object.
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []


  # Method initializes the necessary attributes for the 'Song' class.
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  # Method returns the amount of 'Song' objects that have been initalized.
  def Song.count
    return @@count
  end

  # Method returns an array of 'Artists' without any duplicates.
  def Song.artists
    return @@artists.uniq!
  end

  # Method returns an array of 'Genres' without an duplicates.
  def Song.genres
    return @@genres.uniq!
  end


  # Method creates and returns a histogram of genres and the amount of 'Song'
  # objects per genre.
  def Song.genre_count
    # Creates a new hash to count genres.
    genre_count = Hash.new(0)
    # Assigns the instance variable of '@@genres' into 'genres' for the sake of
    # utilizing it within an array method.
    genres = @@genres
    # Iterates through each genre (element) within the 'genres' array which then
    # is added to the genre_count hash, with the key being the genre and the
    # value being the integer that is the amount of songs in that genre.
    genres.each { |genres| genre_count[genres] += 1 }
    return genre_count
  end

  # Method creates and returns a histogram of artists and the amount of 'Song'
  # objects per artist.
  def Song.artist_count
    # Creates a new hash to count artists.
    artist_count = Hash.new(0)
    # Assigns the instance variable of '@@artists' into 'artists' for the sake
    # of utilizing it within an array method.
    artists = @@artists
    # Iterates through each artist (element) within the 'artists' array which
    # then is added to the artist_count hash, with the key being the artist and
    # the value being the integer that is the amount of songs done by that
    # particular artist.
    artists.each { |artists| artist_count[artists] += 1 }
    return artist_count
  end
end
