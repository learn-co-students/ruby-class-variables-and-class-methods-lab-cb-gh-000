class Song
  attr_accessor(:name, :artist, :genre)

  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
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
    h = Hash.new
    @@genres.each do |i|
      if h[i] == nil
        h[i] = 1
      else
        h[i] += 1
      end
    end
    h
  end

  def self.artist_count
    h = Hash.new
    @@artists.each do |i|
      if h[i] == nil
        h[i] = 1
      else
        h[i] += 1
      end
    end
    h
  end
  
end