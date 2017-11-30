class Song
  attr_accessor :name, :artist, :genre
  @@count   = 0
  @@genres  = []
  @@artists = []
  @@artist_count = {}
  @@genre_count  = {}


  def self.genres
    @@genres.uniq
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genre_count
    @@genre_count
  end
  def self.artist_count
    @@artist_count
  end

  def initialize(name, artist, genre)
    self.name   = name
    self.artist = artist
    self.genre  = genre
    @@count += 1
    # if !@@genres.include?(genre)
    @@genres << genre
    # end
    # if !@@artists.include?(artist)
    @@artists << artist
    # end
    @@genre_count[genre] ||= 0
    @@genre_count[genre] += 1
    @@artist_count[artist] ||= 0
    @@artist_count[artist] += 1

  end
end
