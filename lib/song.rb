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
    @value = @@artists
    @value.uniq
  end

  def self.artist_count
    value = {}
    @@artists.each do |array_value|
      if value[array_value]
        value[array_value] += 1
      else
        value[array_value] = 1
      end
    end
    value
  end

  def self.genres
    @value = @@genres
    @value.uniq
  end

  def self.genre_count
    value = {}
    @@genres.each do |array_value|
      if value[array_value]
        value[array_value] += 1
      else
        value[array_value] = 1
      end
    end
    value
  end
end