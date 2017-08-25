class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
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
    genre_hash = {}
    arr_key = @@genres.uniq
    arr_key.each {|item|
      genre_hash[item] = @@genres.count(item)
    }
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    arr_key = @@artists.uniq
    arr_key.each {|artist|
      artist_hash[artist] = @@artists.count(artist)
    }
    artist_hash
  end


end
