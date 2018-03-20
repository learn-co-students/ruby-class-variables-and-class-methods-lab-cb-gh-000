class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count = {}
  @@genre_count = {}

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

  def self.genres
    new_array = []
    @@genres.each do |genre|
      if !new_array.include?(genre)
        new_array << genre
      end
    end
    new_array
  end

  def self.artists
    new_array = []
    @@artists.each do |artist|
      if !new_array.include?(artist)
        new_array << artist
      end
    end
    new_array
  end

  def self.genre_count
    new_hash = {}
    @@genres.each do |genre|
      if new_hash[genre]
        new_hash[genre] += 1
      else
        new_hash[genre] = 1
      end
    end
    new_hash
  end

  def self.artist_count
    new_hash = {}
    @@artists.each do |artist|
      if new_hash[artist]
        new_hash[artist] += 1
      else
        new_hash[artist] = 1
      end
    end
    new_hash
  end
end
