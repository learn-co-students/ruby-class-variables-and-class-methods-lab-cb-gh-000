class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist

  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    h = Hash.new
    @@genres.each do |genre|
      if h.has_key?(genre)
        h[genre] += 1
      else
        h[genre] = 1
      end
    end
    h
  end

  def self.artist_count
    h = Hash.new
    @@artists.each do |artist|
      if h.has_key?(artist)
        h[artist] += 1
      else
        h[artist] = 1
      end
    end
    h
  end

end


s = Song.new("a","b","c")
