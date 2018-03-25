class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre

  end

  def Song.count
    @@count
  end

  def Song.artists
    @@artists.uniq
  end

  def Song.genres
    @@genres.uniq
  end

  def Song.genre_count
    result = {}
    @@genres.each do |x|
      result[x] ||= 0
      result[x] += 1
    end
    result
  end

  def Song.artist_count
    result = {}
    @@artists.each do |x|
      result[x] ||= 0
      result[x] += 1
    end
    result
  end

end
