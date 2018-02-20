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
    @@genres << @genre
    @@artists << @artist
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
    @genre_hash = {}
    @@genres.each do |e|
      @genre_hash.has_key?(e) ? @genre_hash[e] += 1 : @genre_hash[e] = 1
    end
    @genre_hash
  end

  def self.artist_count
    @artist_hash = {}
    @@artists.each do |e|
      @artist_hash.has_key?(e) ? @artist_hash[e] += 1 : @artist_hash[e] = 1
    end
    @artist_hash
  end
end
