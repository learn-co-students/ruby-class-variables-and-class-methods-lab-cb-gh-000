class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
  end
  
  
  def self.count # return the number of songs created
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
end

# s = Song.new("99 Problems", "Jay-Z", "rap")
# puts s.name
# puts s.artist
# puts s.genre