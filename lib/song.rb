class Song
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  @@count = 0
  @@genres= []
  @@artists = []

  def initialize(name_, artist_, genre_)
    @name = name_
    @artist = artist_
    @genre = genre_

    @@count += 1

    @@genres << @genre

    @@artists << @artist
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

  def self.f(v)
    count = 0
    @@genres.each do |genre|
      if genre == v
        count += 1
      end
    end
    return count
  end

  def self.y(v)
    count = 0
    @@artists.each do |artist|
      if artist == v
        count += 1
      end
    end
    return count
  end

  def self.genre_count
    Hash[@@genres.collect { |v| [v, f(v)] }]
  end

  def self.artist_count
    Hash[@@artists.collect { |v| [v, y(v)] }]
  end

end
