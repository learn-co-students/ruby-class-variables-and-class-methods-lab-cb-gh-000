require 'pry'
class Song
  attr_accessor  :name , :artist , :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name , artist , genre)
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
  def self.genre_count
    result = {}
    @@genres.each{|genre|
     if result.has_key?(genre)
       result[genre] += 1
     else
       result [genre] = 1
     end
    }
    result
  end
  def self.artist_count
    result = {}
    @@artists.each{|artist|
     if result.has_key?(artist)
       result[artist] += 1
     else
       result [artist] = 1
     end
    }
    result
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq   
  end
end
