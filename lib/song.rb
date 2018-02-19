class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each {|g_count| genre_hash[g_count]= @@genres.count(g_count)}
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each {|h_count| artist_hash[h_count]= @@artists.count(h_count)}
    artist_hash
  end
end
