class Song

  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists.push(artist)
    @@genres.push(genre)
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    count = {}
    unique = @@genres.uniq
    unique.each do |item|
      count.store(item, @@genres.count(item))
    end
    count
  end

  def self.artist_count
    count = {}
    uniq = @@artists.uniq
    uniq.each do |item|
      count.store(item, @@artists.count(item))
    end
    count
  end

end