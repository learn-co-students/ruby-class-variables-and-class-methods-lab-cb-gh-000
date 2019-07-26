class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist

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
  def self.genre_count
    counter = {}
    @@genres.each{|genre| counter.include?(genre) ? counter[genre] += 1 : counter[genre] = 1}
    counter
  end

  def self.artist_count
    counter = {}
    @@artists.each{|artist| counter.include?(artist) ? counter[artist] += 1 : counter[artist] = 1}
    counter
  end

end
