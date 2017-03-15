class Song
  attr_accessor(:artist, :genre, :name)

  @@artists = []
  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @artist = artist
    @genre = genre
    @name = name
    @@artists << artist
    @@count += 1
    @@genres << genre
  end

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    hash = {}
    @@artists.each { |artist| hash[artist] ? hash[artist] += 1 : hash[artist] = 1 }
    hash
  end

  def self.genre_count
    hash = {}
    @@genres.each { |genre| hash[genre] ? hash[genre] += 1 : hash[genre] = 1 }
    hash
  end
end
