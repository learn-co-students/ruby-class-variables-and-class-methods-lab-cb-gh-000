class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@count += 1
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    genre_array = []
    @@genres.each do |genre|
      genre_array << genre unless genre_array.include?(genre)
    end
    genre_array
  end

  def self.artists
    artist_array = []
    @@artists.each do |artist|
      artist_array << artist unless artist_array.include?(artist)
    end
    artist_array
  end

  def self.genre_count
    counts = Hash.new { |hash, key| hash[key] = 0 }
    @@genres.each do |genre|
      counts[genre] += 1
    end
    counts
  end

  def self.artist_count
    counts = Hash.new { |hash, key| hash[key] = 0 }
    @@artists.each do |artist|
      counts[artist] += 1
    end
    counts
  end
  
end
