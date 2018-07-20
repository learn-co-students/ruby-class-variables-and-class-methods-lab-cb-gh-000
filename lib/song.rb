class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)

    @name = name
    @@count += 1
    @genre = genre
    @@genres << genre
    @artist = artist
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.genres
    new_arr = []
    @@genres.each do |genre|
      new_arr << genre if !new_arr.include?(genre)
    end
    new_arr
  end

  def self.artists
    new_arr = []
    @@artists.each do |artist|
      new_arr << artist if !new_arr.include?(artist)
    end
    new_arr
  end

  def self.genre_count
    new_hash = {}
    @@genres.each do |genre|
      if new_hash.has_key?(genre)
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
      if new_hash.has_key?(artist)
        new_hash[artist] += 1
      else
        new_hash[artist] = 1
      end
    end
    new_hash
  end


end
