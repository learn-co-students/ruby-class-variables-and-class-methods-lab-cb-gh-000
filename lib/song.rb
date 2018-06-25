require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name
  attr_reader :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    self.artist = artist
    self.genre = genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    self.artist_count.keys
  end

  def self.artist_count
    self.attribute_count(@@artists)
  end

  def self.genres
    self.genre_count.keys
  end

  def self.genre_count
    self.attribute_count(@@genres)
  end

  def self.attribute_count(attribute)
    result = {}
    attribute.each do |item|
      if result[item] == nil
        result[item] = 1
      else
        result[item] += 1
      end
    end
    result
  end

  def genre=(genre)
    @genre = genre
    @@genres << genre
  end

  def artist=(artist)
    @artist = artist
    @@artists << artist
  end

end
