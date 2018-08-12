class Song 
  
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists|[]
  end
  
  def self.genres
    @@genres|[]
  end
  
  def self.genre_count
    b = Hash.new(0)
    @@genres.each{ |v|
      b[v] += 1
    }
    return b
    # @@genres.each{|item|}
  end
  
  def self.artist_count
    b = Hash.new(0)
    @@artists.each{ |v|
      b[v] += 1
    }
    return b
  end
end