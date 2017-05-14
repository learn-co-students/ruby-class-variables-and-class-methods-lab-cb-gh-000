class Song

  @@count = 0 
  @@genres = []
  @@artists = []

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
    genre_count = {}
    
    @@genres.each do |genre|
      genre_count[genre] = 0 unless genre_count.has_key?(genre)
      genre_count[genre] += 1
    end

    genre_count
  end

  def self.artist_count
    artist_count = {}
    
    @@artists.each do |artist|
      artist_count[artist] = 0 unless artist_count.has_key?(artist)
      artist_count[artist] += 1
    end
    
    artist_count
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end
  
  attr_accessor :name, :artist, :genre
end
