class Song
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist

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
    result = {}
    
    @@genres.each do |genre|
      if !result.key?(genre)
        result[genre] = 1
      else
        result[genre] += 1
      end
    end
    
    return result
  end 
  
  def self.artist_count
    result = {}
    
    @@artists.each do |artist|
      if !result.key?(artist)
        result[artist] = 1
      else
        result[artist] += 1
      end
    end
    
    return result
  end
  
end 