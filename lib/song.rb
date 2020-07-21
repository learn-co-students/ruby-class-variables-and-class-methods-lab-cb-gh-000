class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = Array.new
  @@genres = Array.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count 
    return @@count
  end

  def self.genres
    return @@genres.uniq
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genre_count
      temp = Hash.new
      @@genres.each do |genre|
        if !temp.key?(genre)
          temp[genre] = 1
        else
          temp[genre] += 1
        end        
      end
      return temp
  end

  def self.artist_count
    temp = Hash.new
    @@artists.each do |artist|
      if !temp.key?(artist)
        temp[artist] = 1
      else
        temp[artist] += 1
      end        
    end
    return temp
  end
  
end